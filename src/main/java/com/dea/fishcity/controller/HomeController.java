package com.dea.fishcity.controller;

import com.dea.fishcity.models.LoginUser;
import com.dea.fishcity.models.Menu;
import com.dea.fishcity.models.User;
import com.dea.fishcity.services.MenuService;
import com.dea.fishcity.services.UserService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.Base64;
import java.util.Comparator;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private UserService userService;
    @Autowired
    private MenuService menuService;


    @GetMapping("/")
    public String index(Model model) {


        return "index";
    }

    @GetMapping("dashboard")
    public String dashboard(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);

        List<Menu> allMenus = menuService.allMenus(); // Get all posts
        allMenus.sort((menu1, menu2) -> menu2.getCreatedAt().compareTo(menu1.getCreatedAt())); // Sort in reverse order

        model.addAttribute("allMenus", allMenus);
        model.addAttribute("user", user);
        return "dashboard";
    }

    @GetMapping("/login")
    public String loginPage(@ModelAttribute("loginUser") LoginUser loginUser) {
        return "login";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("loginUser") LoginUser loginUser, BindingResult result, Model model, HttpSession session) {
        User user = userService.login(loginUser, result);

        if (user != null) {
            session.setAttribute("userId", user.getId());
            return "redirect:/dashboard";
        } else {
            // User not found, display a custom error message
            model.addAttribute("loginError", "Ju nuk jeni admini.");
            return "login"; // Return to the login page with the error message
        }
    }


    @GetMapping("/filter")
    public String filter(Model model, @RequestParam(name = "type", required = false) String type) {

        List<Menu> menus;

        // If the type parameter is "all", get all menus
        if ("all".equalsIgnoreCase(type)) {
            menus = menuService.allMenus();
        } else if (type != null && !type.isEmpty()) {
            // If a specific type is provided, filter the menus
            menus = menuService.getMenusByType(type);
        } else {
            // Default to showing all menus
            menus = menuService.allMenus();
        }

        // Sort the menus by creation date in descending order (newest to latest)
        menus.sort(Comparator.comparing(Menu::getCreatedAt).reversed());

        // Set the filtered menus in the model
        model.addAttribute("filteredMenus", menus);

        // Set the posts in the model
        model.addAttribute("menus", menus);

        // Return the dashboard view with the fragment identifier
        return "dashboard";
    }

    @GetMapping("/filterIndex")
    public String filterIndex(Model model, @RequestParam(name = "type", required = false) String type) {

        List<Menu> menus;

        // If the type parameter is "all", get all menus
        if ("all".equalsIgnoreCase(type)) {
            menus = menuService.allMenus();
        } else if (type != null && !type.isEmpty()) {
            // If a specific type is provided, filter the menus
            menus = menuService.getMenusByType(type);
        } else {
            // Default to showing all menus
            menus = menuService.allMenus();
        }

        // Sort the menus by creation date in descending order (newest to latest)
        menus.sort(Comparator.comparing(Menu::getCreatedAt).reversed());

        // Set the filtered menus in the model
        model.addAttribute("filteredMenus", menus);

        // Set the posts in the model
        model.addAttribute("menus", menus);

        // Return the dashboard view with the fragment identifier
        return "index";
    }

    @GetMapping("/register")
    public String registerPage(@ModelAttribute("newUser") User newUser) {
        return "register";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
        userService.register(newUser, result);

        if ("imdeacc@gmail.com".equals(newUser.getEmail())) {
            session.setAttribute("userId", newUser.getId());
            return "redirect:/dashboard";
        } else {
            // Redirect to a different page (e.g., index1) for other email addresses
            return "index";
        }
    }


    @GetMapping("/add-menu")
    public String newPet(@ModelAttribute("addMenu") Menu menu, HttpSession session, Model model) {
        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);

        model.addAttribute("user", user);
        return "addMenu";
    }

    @PostMapping("/add-menu")
    public String addNewMenu(@Valid @ModelAttribute("menu") Menu menu, BindingResult result, HttpSession session,
                             @RequestParam(name = "type", required = false) String type) {

        if (session.getAttribute("userId") == null) {
            return "redirect:/logout";
        }

        if (result.hasErrors()) {
            return "addMenu";
        } else {
            try {
                // Handle image upload
                menuService.addMenu(menu);
            } catch (IOException e) {
                // Handle the exception (e.g., log it or show an error message)
                e.printStackTrace();
                return "addMenu";
            }

            Long userId = (Long) session.getAttribute("userId");
            User user = userService.findById(userId);
            user.getMenus().add(menu);
            userService.updateUser(user);

            // Redirect to the filter URL with the type parameter
            String redirectUrl = "/filter";
            if (type != null && !type.isEmpty()) {
                redirectUrl += "?type=" + type + "#menu";
            }

            return "redirect:" + redirectUrl;
        }
    }


    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("userId", null);
        return "redirect:/";
    }

    @GetMapping("/menu/edit/{menuId}")
    public String openEditMenu(@PathVariable("menuId") Long id, HttpSession session, Model model) {
        if (session.getAttribute("userId") == null) {
            return "redirect:/logout";
        }

        Menu menu = menuService.findById(id);
        model.addAttribute("menu", menu);
        return "editMenu";
    }

    @PostMapping("/menu/edit/{menuId}")
    public String editMenu(@PathVariable("menuId") Long id, @Valid @ModelAttribute("menu") Menu updatedMenu,
                           BindingResult result, HttpSession session) {
        if (session.getAttribute("userId") == null) {
            return "redirect:/logout";
        }

        if (result.hasErrors()) {
            return "editMenu";
        } else {
            Menu existingMenu = menuService.findById(id);
            if (existingMenu == null) {
                return "redirect:/dashboard";
            }

            Long userId = (Long) session.getAttribute("userId");
            User user = userService.findById(userId);

            // Update the menu post
            existingMenu.setDish(updatedMenu.getDish());
            existingMenu.setIngredients(updatedMenu.getIngredients());
            existingMenu.setType(updatedMenu.getType());
            existingMenu.setPrice(updatedMenu.getPrice());

            try {
                menuService.updateMenu(existingMenu);
            } catch (IOException e) {
                // Handle the exception (e.g., log it or show an error message)
                e.printStackTrace();
                return "editMenu";
            }

            return "redirect:/filter#menu";
        }
    }


    @RequestMapping("/menu/delete/{id}")
    public String deletePost(@PathVariable("id") Long id, HttpSession session) {

        if (session.getAttribute("userId") == null) {
            return "redirect:/logout";
        }

        Menu menu = menuService.findById(id);
        menuService.deleteMenu(menu);

        return "redirect:/filter#menu";
    }

}

package com.dea.fishcity.services;

import com.dea.fishcity.models.Menu;
import com.dea.fishcity.repositories.MenuRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

@Service
public class MenuService {

    @Autowired
    private MenuRepo menuRepo;

    public List<Menu> allMenus() {
        return menuRepo.findAll();
    }

    public List<Menu> getMenusByType(String type) {
        return menuRepo.findByType(type);
    }

    public void addMenu(Menu menu) throws IOException {
        handleImageUpload(menu);
        menuRepo.save(menu);
    }

    public Menu updateMenu(Menu menu) throws IOException {
        handleImageUpload(menu);
        return menuRepo.save(menu);
    }

    public Menu edit(Menu menu) {
        if (menuRepo.existsById(menu.getId())) {
            return menuRepo.save(menu);
        }
        throw new RuntimeException("Dish not found: " + menu.getId());
    }

    public void deleteMenu(Menu menu) {
        menuRepo.delete(menu);
    }

    public Menu findById(Long id) {
        Optional<Menu> optionalMenu = menuRepo.findById(id);
        return optionalMenu.orElse(null);
    }

    public List<Menu> findMenusByUserId(Long userId) {
        return menuRepo.findByUsers_Id(userId);
    }

    private void handleImageUpload(Menu menu) throws IOException {
        if (menu.getImageFile() != null && !menu.getImageFile().isEmpty()) {
            byte[] imageData = menu.getImageFile().getBytes();
            String encodedImageData = Base64.getEncoder().encodeToString(imageData);
            menu.setImageData(encodedImageData);
        }
    }
}
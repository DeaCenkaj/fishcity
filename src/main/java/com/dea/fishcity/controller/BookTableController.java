package com.dea.fishcity.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.CompletableFuture;

@RestController
public class BookTableController {

    @Autowired
    private JavaMailSender emailSender;

    @PostMapping("/book-a-table")
    public CompletableFuture<String> bookTable(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone,
            @RequestParam("date") String date,
            @RequestParam("time") String time,
            @RequestParam("people") int people,
            @RequestParam("message") String message
    ) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                SimpleMailMessage mailMessage = new SimpleMailMessage();
                mailMessage.setFrom("your-email@gmail.com"); // Replace with your email
                mailMessage.setTo("imdeacc@gmail.com");
                mailMessage.setSubject("New booking from " + name);

                String emailBody = "You have received a new booking from the user " + name + ".\n\n";
                emailBody += "Here is the booking information:\n";
                emailBody += "Name: " + name + "\n";
                emailBody += "Email: " + email + "\n";
                emailBody += "Phone: " + phone + "\n";
                emailBody += "Date: " + date + "\n";
                emailBody += "Time: " + time + "\n";
                emailBody += "People: " + people + "\n";
                emailBody += "Message: " + message + "\n\n";
                mailMessage.setText(emailBody);

                emailSender.send(mailMessage);

                return "Mezazhi u dergua me sukses!";
            } catch (Exception e) {
                e.printStackTrace();
                return "Error sending the message";
            }
        });
    }
}

package com.dea.fishcity.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ContactController {
    @Autowired
    private JavaMailSender emailSender;
    @PostMapping("/contact")
    public void bookTable(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("subject") String subject,
            @RequestParam("message") String message

    ) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom("your-email@gmail.com"); // Replace with your email
        mailMessage.setTo("imdeacc@gmail.com");
        mailMessage.setSubject("New message from " + name);

        String emailBody = "You have received a new message from the user " + name + ".\n\n";
        emailBody += "Here is the message information:\n";
        emailBody += "Name: " + name + "\n";
        emailBody += "Email: " + email + "\n";
        emailBody += "Subject: " + subject + "\n";
        emailBody += "Message: " + message + "\n\n";
        mailMessage.setText(emailBody);

        emailSender.send(mailMessage);
    }
}



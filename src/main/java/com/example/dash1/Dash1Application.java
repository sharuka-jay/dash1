package com.example.dash1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Dash1Application {

    public static void main(String[] args) {
        SpringApplication.run(Dash1Application.class, args);
    }
    @GetMapping("/")
    public String home() {
        return "welcome home";
    }
}

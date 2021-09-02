package com.example.helmdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/hello")
@RestController
public class Hello1Controller {

    @GetMapping
    public String getHello() {
        return "hello";
    }
}

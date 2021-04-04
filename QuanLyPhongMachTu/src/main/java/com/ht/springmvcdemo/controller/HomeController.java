package com.ht.springmvcdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping(value = "/")
    public String index(Model model) {
        model.addAttribute("message", "Welcome to our Website!!!");
        return "baseLayout";
    }
}
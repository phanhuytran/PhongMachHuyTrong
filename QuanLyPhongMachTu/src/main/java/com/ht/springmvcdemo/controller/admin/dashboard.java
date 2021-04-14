package com.ht.springmvcdemo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class dashboard {
    @RequestMapping()
    public String index(Model model) {
        model.addAttribute("message", "Welcome to our Website!!!");
        return "baseAdminLayout";
    }
}

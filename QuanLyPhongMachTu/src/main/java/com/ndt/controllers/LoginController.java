package com.ndt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/taikhoan")
public class LoginController {
    @Autowired
    BCryptPasswordEncoder cryptPasswordEncoder;
    @RequestMapping(value = "/login")
    public String login() {

        return "login";
    }
}
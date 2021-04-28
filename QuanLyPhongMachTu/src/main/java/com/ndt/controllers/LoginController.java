package com.ndt.controllers;

import com.ndt.models.TaiKhoan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/taikhoan")
public class LoginController {
    @Autowired
    BCryptPasswordEncoder cryptPasswordEncoder;
    @RequestMapping(value = "/login")
    public String login() {
        System.out.println(cryptPasswordEncoder.encode("123"));
        return "login";
    }
}

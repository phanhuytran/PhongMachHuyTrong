package com.ndt.controllers;

import com.ndt.models.BacSi;
import com.ndt.service.IBacSiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/doctors")
public class DoctorController {
    @Autowired
    IBacSiService iBacSiService;


    @GetMapping()
    public String index(ModelMap model) {
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        return "doctors";
    }

}

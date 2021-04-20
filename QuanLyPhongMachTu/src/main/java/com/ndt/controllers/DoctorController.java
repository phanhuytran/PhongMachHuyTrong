package com.ndt.controllers;

import com.ndt.models.BacSi;
import com.ndt.models.TaiKhoan;
import com.ndt.service.IBacSiService;
import com.ndt.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
@ControllerAdvice
@RequestMapping("/doctors")
public class DoctorController {
    @Autowired
    IBacSiService iBacSiService;

    @Autowired
    ITaiKhoanService iTaiKhoanService;

    @ModelAttribute
    public void modelAttribute(ModelMap model) {
        model.addAttribute("taiKhoan", iTaiKhoanService.getTaiKhoanBacSiTrong());
    }

    @GetMapping()
    public String index(ModelMap model) {
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        return "doctors";
    }

    @GetMapping("/add")
    public String addView(ModelMap model) {
        model.addAttribute("doctor", new BacSi());
        return "add-doctor";
    }

    @PostMapping("/add")
    public String addProcess(@ModelAttribute("doctor")BacSi bacSi, HttpServletRequest request) {
        System.out.println(bacSi);
        System.out.println(bacSi.getEmail());
        System.out.println(bacSi.getDienThoai());
        //set image
        MultipartFile img = bacSi.getImg();
        String relativePath = "/admin-resources/images/" + bacSi.getTen() + ".png";
        String targetPath = request.getSession().getServletContext()
                .getRealPath(String.format("/admin-resources/images/%s.png", bacSi.getTen()));
        if (img != null && !img.isEmpty()) {
            try {
                img.transferTo(new File(targetPath));
                bacSi.setImage(relativePath);
            } catch (IllegalStateException | IOException ex) {
                System.err.println(ex.getMessage());
            }
        }
        BacSi b = iBacSiService.insert(bacSi);
        if (b != null)
            return "redirect:/doctors";
        return "add-doctor";
    }

}

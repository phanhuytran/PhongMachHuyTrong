package com.ndt.controllers;

import com.ndt.models.BacSi;
import com.ndt.models.BenhNhan;
import com.ndt.service.IBenhNhanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.UUID;

@Controller
@RequestMapping("/patients")
public class PatientConroller {

    @Autowired
    IBenhNhanService iBenhNhanService;

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("patient", iBenhNhanService.getAll(BenhNhan.class));
        iBenhNhanService.getAll(BenhNhan.class).forEach(t -> System.out.println(t));
        return "patients";
    }
    @GetMapping("/add")
    public String addView(ModelMap modelMap){
        modelMap.addAttribute("patient", new BenhNhan());
        return "add-patient";
    }
    @PostMapping("/add")
    public String addProcess (@ModelAttribute("patient") BenhNhan benhNhan, BindingResult result, HttpServletRequest request) throws ParseException {
        if(!result.hasErrors())
        {
            System.out.println("");
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            System.out.printf("ten benh nhan:%s\ngiới tính: %s\nđiện thoại:%s\nngày sinh: %s\n",
                    benhNhan.getTen(), benhNhan.getGioiTinh(), benhNhan.getDienThoai(),benhNhan.getNgaySinh());
            benhNhan.setId(UUID.randomUUID().toString());
            benhNhan.setNgaySinh(format.parse(benhNhan.getDateString()));
            BenhNhan bn = iBenhNhanService.insert(benhNhan);

            if(bn != null)
                return "redirect:/patients";
        }

        return "add-patient";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable("id")String id, ModelMap model) {
        BenhNhan benhNhan = iBenhNhanService.getById(BenhNhan.class, id);
        model.addAttribute("patient", benhNhan);
        return "patient-profile";
    }

    // Chỉnh sửa thông tin bệnh nhân
    // Xóa thông tin bệnh nhân
    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deletePatient(@PathVariable("id")String id) {
        BenhNhan benhNhan = iBenhNhanService.getById(BenhNhan.class, id);
        iBenhNhanService.delete(benhNhan);
    }
}

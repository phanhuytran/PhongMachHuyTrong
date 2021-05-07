package com.ndt.controllers;

import com.ndt.models.BacSi;
import com.ndt.models.BenhNhan;
import com.ndt.models.NhanVien;
import com.ndt.models.TaiKhoan;
import com.ndt.service.IBacSiService;
import com.ndt.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

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

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        iBacSiService.getAll(BacSi.class).forEach(t -> System.out.println(t));
        return "doctors";
    }

    @GetMapping("/add")
    public String addView(Model model) {
        model.addAttribute("doctor1", new BacSi());
        return "add-doctor";
    }

    @PostMapping("/add")
    public String addProcess(@ModelAttribute("bacsi1") BacSi bacSi,
                             BindingResult result, HttpServletRequest request) {
        if (!result.hasErrors()) {
            System.out.println(bacSi);
            System.out.println(bacSi.getEmail());
            System.out.println(bacSi.getDienThoai());

            int i = (int) (Math.random() * 5) + 1;
            bacSi.setImage("/admin-resources/plugins/images/users/d"+i+".jpg");
            BacSi b = iBacSiService.insert(bacSi);
            if (b != null)
                return "redirect:/doctors";
        }

        return "add-doctor";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable("id")String id, ModelMap model) {
        BacSi bacSi = iBacSiService.getById(BacSi.class, id);
        model.addAttribute("doctor", bacSi);
        return "doctor-profile";
    }

    // Chỉnh sửa thông tin Bác sĩ
    // Xóa thông tin Bác sĩ
    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteDoctor(@PathVariable("id")String id) {
        BacSi bacSi = iBacSiService.getById(BacSi.class, id);
        iBacSiService.delete(bacSi);
    }

    @GetMapping("/edit-doctor/{id}")
    public String editView(@PathVariable("id")String id, ModelMap model) {
        model.addAttribute("doctor", iBacSiService.getById(BacSi.class, id));

        return "edit-doctor";
    }

    @PostMapping("/edit-doctor/{id}")
    public String editProcess(@ModelAttribute("doctor") @Valid BacSi bacSi,
                              BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            System.out.println(bacSi.getTaiKhoan().getUsername());
            BacSi bs = iBacSiService.update(bacSi);
            if (bs != null)
                return "redirect:/doctors";
        }

        return "edit-doctor";
    }
    @GetMapping("/search")
    public String search(@RequestParam("hoten") String cay, ModelMap model){
        List<BacSi> doctors = iBacSiService.getAll(BacSi.class).stream()
                .filter(n -> (n.getHo().toUpperCase() + " " + n.getTen().toUpperCase()).contains(cay.toUpperCase())).collect(Collectors.toList());
        model.addAttribute("doctors", doctors);
        return "doctors";
    }
}

package com.ndt.controllers;

import com.ndt.models.BacSi;
import com.ndt.models.NhanVien;
import com.ndt.service.INhanVienService;
import com.ndt.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
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
@RequestMapping("/employees")
public class EmployeeController {
    @Autowired
    INhanVienService iNhanVienService;

    @Autowired
    ITaiKhoanService iTaiKhoanService;

    @ModelAttribute
    public void modelAttribute(ModelMap model) {
        model.addAttribute("taiKhoan", iTaiKhoanService.getTaiKhoanNhanVienTrong());
    }

    @GetMapping()
    public String index(ModelMap model) {
        model.addAttribute("employees", iNhanVienService.getAll(NhanVien.class));
        return "employees";
    }

    @GetMapping("/add")
    public String addView(ModelMap model) {
        model.addAttribute("employee", new NhanVien());
        return "add-employee";
    }

    @PostMapping("/add")
    public String addProcess(@ModelAttribute("employee") @Valid NhanVien nhanVien,
                             BindingResult result, ModelMap model, HttpServletRequest request) {
        if (!result.hasErrors()) {
            System.out.println(nhanVien);
            System.out.println(nhanVien.getDienThoai());
            //set image
            MultipartFile img = nhanVien.getImg();
            String relativePath = "/admin-resources/images/" + nhanVien.getTaiKhoan().getUsername() + ".jpg";
            String targetPath = request.getSession().getServletContext()
                    .getRealPath(String.format("/admin-resources/images/%s.jpg", nhanVien.getTaiKhoan().getUsername()));
            if (img != null && !img.isEmpty()) {
                try {
                    img.transferTo(new File(targetPath));
                    nhanVien.setImage(relativePath);
                } catch (IllegalStateException | IOException ex) {
                    nhanVien.setImage(" ");
                    System.err.println(ex.getMessage());
                }
            }
            NhanVien nv = iNhanVienService.insert(nhanVien);
            if (nv != null)
                return "redirect:/employees";
        }

        return "add-employee";
    }

    @GetMapping("/edit/{id}")
    public String editView(@PathVariable("id")String id, ModelMap model) {
        model.addAttribute("employee", iNhanVienService.getById(NhanVien.class, id));

        return "edit-employee";
    }

    @PostMapping("/edit/{id}")
    public String editProcess(@ModelAttribute("employee") @Valid NhanVien nhanVien,
                              BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            System.out.println(nhanVien.getTaiKhoan().getUsername());
            NhanVien nv = iNhanVienService.update(nhanVien);
            if (nv != null)
                return "redirect:/employees";
        }

        return "edit-employee";
    }

    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable("id")String id) {
        if (id != null && !id.isEmpty()) {
            iNhanVienService.delete(iNhanVienService.getById(NhanVien.class, id));
        }
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable("id")String id, ModelMap model) {
        NhanVien nhanVien = iNhanVienService.getById(NhanVien.class, id);
        model.addAttribute("doctor", nhanVien);
        return "doctor-profile";
    }

    @GetMapping("/search")
    public String search(@RequestParam("hoten") String cay, ModelMap model){
        List<NhanVien> employees = iNhanVienService.getAll(NhanVien.class).stream()
                .filter(n -> (n.getHo() + " " + n.getTen()).contains(cay)).collect(Collectors.toList());
        model.addAttribute("employees", employees);
        return "employees";
    }
}

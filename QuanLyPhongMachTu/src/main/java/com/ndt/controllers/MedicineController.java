package com.ndt.controllers;

import com.ndt.models.NhanVien;
import com.ndt.models.Thuoc;
import com.ndt.service.IThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.UUID;

@Controller
@RequestMapping("/medicines")

public class MedicineController {

    @Autowired
    IThuocService iThuocService;

    @GetMapping()
    public String index(ModelMap model) {
        model.addAttribute("medicine", iThuocService.getAll(Thuoc.class));
        return "medicines";
    }

    @GetMapping("/add")
    public String addView(ModelMap modelMap){
        modelMap.addAttribute("medicine", new Thuoc());
        return "add-medicine";
    }

    @PostMapping("/add")
    public String addProcess (@ModelAttribute("medicine") Thuoc thuoc, BindingResult result, HttpServletRequest request) throws ParseException {
        if(!result.hasErrors())
        {
            System.out.println("");
            thuoc.setId(iThuocService.getAll(Thuoc.class).size() + 1);
            System.out.printf("ten thuoc:%s\nmo ta: %s\ndon gia:%s\ndon vi: %s\nid: %s\n" ,
                    thuoc.getTenThuoc(), thuoc.getMoTa(), thuoc.getDonGia(),thuoc.getDonVi(),thuoc.getId());

            Thuoc t = iThuocService.insert(thuoc);

            if(t != null)
                return "redirect:/medicines";
        }

        return "add-medicine";
    }


    @GetMapping("/details/{id}")
    public String details(@PathVariable("id")String id, ModelMap model) {
        Thuoc thuoc = iThuocService.getById(Thuoc.class, id);
        model.addAttribute("medicine", thuoc);
        return "medicine.detail";
    }
}

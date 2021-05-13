package com.ndt.controllers.user;


import com.ndt.models.BenhNhan;
import com.ndt.modelview.SearchPatient;
import com.ndt.service.IBenhNhanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/user/search-patient")
public class PatientController {

    @Autowired
    IBenhNhanService iBenhNhanService;

    @GetMapping("/")
    public String searchView(ModelMap  model){
        model.addAttribute("patient",new SearchPatient());
        return "user.patient.search";
    }

    @PostMapping("/")
    public String searchProcess(@ModelAttribute("patient") @Valid SearchPatient patient,
                                BindingResult result, ModelMap model){
        if (!result.hasErrors()) {
            BenhNhan benhNhan = iBenhNhanService.getBenhNhanTheoSoDienThoai(patient.getDienThoai());
            return String.format("redirect:/user/search-patient/profile?id=%s", benhNhan.getId());
        }
        return "user.patient.search";
    }

    @GetMapping("/profile")
    public String profile(@RequestParam("id")String id, ModelMap model) {
        model.addAttribute("patient", iBenhNhanService.getById(BenhNhan.class, id));
        return "user.patient.profile";
    }

}

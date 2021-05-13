package com.ndt.controllers;


import com.ndt.models.*;
import com.ndt.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;
import javax.validation.Valid;

@Controller
@ControllerAdvice
@RequestMapping("/prescription")
public class PrescriptionController {

    @Autowired
    IToaThuocService iToaThuocService;
    @Autowired
    IBacSiService iBacSiService;
    @Autowired
    IBenhNhanService iBenhNhanService;
    @Autowired
    ILoaiBenhService iLoaiBenhService;
    @Autowired
    IChiTietToaThuocService iChiTietToaThuocService;
    @Autowired
    IThuocService iThuocService;

    @RequestMapping
    public String index (ModelMap model){;
        model.addAttribute("prescription", iToaThuocService.getAll(ToaThuoc.class));
        return "prescriptions";
    }
    @GetMapping("/search")
    public String search(@RequestParam(value = "BN", required = false) String BN,
                         @RequestParam(value = "BS", required = false) String BS,   ModelMap model){


        if(BN != null && !BN.isEmpty()) {
            List<ToaThuoc> prescriptions = iToaThuocService.getAll(ToaThuoc.class).stream()
                    .filter(n -> (n.getBenhNhan().getHo().toUpperCase() + " " + n.getBenhNhan().getTen().toUpperCase())
                            .contains(BN.toUpperCase())).collect(Collectors.toList());
            model.addAttribute("prescription", prescriptions);
        }
        else if(BS != null && !BS.isEmpty())
        {
            List<ToaThuoc> prescriptions = iToaThuocService.getAll(ToaThuoc.class).stream()
                    .filter(n -> (n.getBacSi().getHo().toUpperCase() + " " + n.getBacSi().getTen().toUpperCase())
                            .contains(BS.toUpperCase())).collect(Collectors.toList());
            model.addAttribute("prescription", prescriptions);
        }
        else
        {
            model.addAttribute("prescription", iToaThuocService.getAll(ToaThuoc.class));
        }
        return "prescription";
    }

    @GetMapping("/add")
    public String addView(ModelMap model) {
        model.addAttribute("prescription", new ToaThuoc());
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("patients", iBenhNhanService.getAll(BenhNhan.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));
        return "prescription.add";
    }

    @PostMapping("/add")
    public String addProcess(@ModelAttribute("prescription")ToaThuoc toaThuoc, ModelMap model) {
        toaThuoc.setId(UUID.randomUUID().toString());
        ToaThuoc t = iToaThuocService.insert(toaThuoc);
        if (t != null)
            return "redirect:/prescription";


        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("patients", iBenhNhanService.getAll(BenhNhan.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));
        return "prescription.add";
    }

    @GetMapping("/edit/{id}")
    public String editview(@PathVariable("id") String id, ModelMap model){

        model.addAttribute("prescription", iToaThuocService.getById(ToaThuoc.class, id));
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("patients", iBenhNhanService.getAll(BenhNhan.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));

        return "prescription.edit";

    }

    @PostMapping("/edit/{id}")
    public String editProcess(@ModelAttribute("prescription") @Valid ToaThuoc toaThuoc, BindingResult result,ModelMap model){
        if (!result.hasErrors())
        {
            ToaThuoc toaThuoc1 = iToaThuocService.update(toaThuoc);
            if (toaThuoc1 != null)
                return  "redirect:/prescription";

        }

        return "prescription.edit";
    }

    // Xóa thông tin Bác sĩ
    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteToaThuoc(@PathVariable("id")String id) {

        ToaThuoc toaThuoc = iToaThuocService.getById(ToaThuoc.class, id);
        iToaThuocService.delete(toaThuoc);
    }


    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") String id, ModelMap model){
        model.addAttribute("prescription", iToaThuocService.getById(ToaThuoc.class, id));
        model.addAttribute("medicines", iThuocService.getAll(Thuoc.class));
        model.addAttribute("detail", new ChiTietToaThuoc());
        model.addAttribute("result",
                iChiTietToaThuocService.getAll(ChiTietToaThuoc.class)
                        .stream().filter(t -> t.getToaThuoc().getId().equals(id))
                        .collect(Collectors.toList()));
        return "prescription.detail";
    }

    @PostMapping("/detail/{id}")
    public String detailProcess(@PathVariable("id")String id,
                                @ModelAttribute("detail") @Valid ChiTietToaThuoc ct,
                                BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            BigDecimal donGia = iThuocService.getById(Thuoc.class, ct.getThuoc().getId()).getDonGia();
            ct.setDonGia(donGia);
            ct.setThanhTien(donGia.multiply(new BigDecimal(ct.getSoLuong())));

            ChiTietToaThuoc res = iChiTietToaThuocService.getAll(ChiTietToaThuoc.class).stream()
                    .filter(t -> t.getToaThuoc().getId().equals(ct.getToaThuoc().getId())
                            && t.getThuoc().getId() == ct.getThuoc().getId())
                    .findFirst().orElse(null);
            try {
                if (res == null)
                    iChiTietToaThuocService.insert(ct);
                else {
                    res.setSoLuong(res.getSoLuong() + ct.getSoLuong());
                    iChiTietToaThuocService.update(res);
                }
                return "redirect:/prescription/detail/"+id;
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }

        model.addAttribute("prescription", iToaThuocService.getById(ToaThuoc.class, id));
        model.addAttribute("medicines", iThuocService.getAll(Thuoc.class));
        model.addAttribute("result",
                iChiTietToaThuocService.getAll(ChiTietToaThuoc.class)
                        .stream().filter(t -> t.getToaThuoc().getId().equals(id))
                        .collect(Collectors.toList()));
        return "prescription.detail";
    }

}

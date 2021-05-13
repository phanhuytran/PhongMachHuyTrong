package com.ndt.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ndt.models.*;
import com.ndt.modelview.Appointment;
import com.ndt.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import com.ndt.enums.Order;

import javax.validation.Valid;

@Controller
public class HomeController {
    @Autowired
    ICaKhamBenhService iCaKhamBenhService;
    @Autowired
    IBacSiService iBacSiService;
    @Autowired
    ILoaiBenhService iLoaiBenhService;
    @Autowired
    IBenhNhanService iBenhNhanService;
    @Autowired
    IPhieuKhamBenhService iPhieuKhamBenhService;

    // Main templates
    @RequestMapping(value = "/")
    public String index(Model model) {
        model.addAttribute("appointment", new Appointment());
        model.addAttribute("shifts", iCaKhamBenhService.getAll(CaKhamBenh.class));
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));
        return "index";
    }

    @PostMapping(value = "/")
    public String book(@ModelAttribute("appointment") @Valid Appointment appointment,
      BindingResult result,  ModelMap model) throws ParseException {
        if (!result.hasErrors()){

            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            //Tr�n giao di�?n nh�?p nga?y theo ?i?nh da?ng na?o thi?
            // simpledateformat theo ?i?nh da?ng ?o?, ?? ?�y la? nga?y/tha?ng/n?m
            BenhNhan benhNhan = new BenhNhan();
            benhNhan.setId(UUID.randomUUID().toString());
            benhNhan.setTen(appointment.getTen());
            benhNhan.setHo(appointment.getHo());
            benhNhan.setGioiTinh(appointment.getGioiTinh());
            benhNhan.setNgaySinh(format.parse(appointment.getNgaySinh()));
            benhNhan.setDienThoai(appointment.getDienThoai());

            BenhNhan resultBN = iBenhNhanService.insert(benhNhan);

            PhieuKhamBenh phieuKhamBenh = new PhieuKhamBenh();
            phieuKhamBenh.setId(iPhieuKhamBenhService.getAllOrderBy(PhieuKhamBenh.class,"id",Order.DESC).get(0).getId() + 1);
            phieuKhamBenh.setBenhNhan(resultBN);
            phieuKhamBenh.setThanhToan(false);
            phieuKhamBenh.setNgayKham(format.parse(appointment.getNgayKham()));
            phieuKhamBenh.setCaKhamBenh(appointment.getCaKhamBenh());
            phieuKhamBenh.setDiaChi(appointment.getDiaChi());
            phieuKhamBenh.setBacSi(appointment.getBacSi());
            Set<LoaiBenh> loaiBenhs = new HashSet<>();
            loaiBenhs.add(appointment.getLoaiBenh());
            phieuKhamBenh.setDsLoaiBenh(loaiBenhs);

            PhieuKhamBenh result1 = iPhieuKhamBenhService.insert(phieuKhamBenh);
            if (result1 != null){
                model.addAttribute("message", "Đặt lịch thành công, " +
                        "vào tra cứu để kiểm tra thông tin");
                return "index";
            }

        }



        model.addAttribute("message", "Có lỗi, vui lòng kiểm tra lại thông tin");
        return "index";
    }

    @RequestMapping("/api/getTotalPatients")
    public @ResponseBody String getTotalPatients(@RequestParam(value = "year", required = false)String year) throws JsonProcessingException {
        String result = "";
        ObjectMapper mapper = new ObjectMapper();
        if (year != null && !year.isEmpty()) {
            result = mapper.writeValueAsString(iBenhNhanService.getTotalPatients(Integer.parseInt(year)));
        }
        else
            result = mapper.writeValueAsString(iBenhNhanService.getTotalPatients(new Date().getYear() + 1900));
        return result;
    }

    // Admin - Login
    @RequestMapping(value = "/login")
    public String login(Model model) { return "login"; }





    // Admin - Patient
    // Admin - Report
    @RequestMapping(value = "/payment-report")
    public String paymentReport(Model model) { return "payment-report"; }
    @RequestMapping(value = "/income-report")
    public String incomeReport(Model model) { return "income-report"; }
    @RequestMapping(value = "/sales-report")
    public String salesReport(Model model) { return "sales-report"; }

    // Admin - Payment
    @RequestMapping(value = "/payments")
    public String payments(Model model) { return "payments"; }
    @RequestMapping(value = "/add-payment")
    public String addPayments(Model model) { return "add-payment"; }
    @RequestMapping(value = "/patient-invoice")
    public String patientInvoice(Model model) { return "patient-invoice"; }

    // Admin - Appointment
    @RequestMapping(value = "/doctor-schedule")
    public String doctorSchedule(Model model) { return "doctor-schedule"; }
    @RequestMapping(value = "/book-appointment")
    public String bookAppointment(Model model) { return "book-appointment"; }

    // Admin - Mail
    @RequestMapping(value = "/inbox")
    public String inbox(Model model) { return "inbox"; }
    @RequestMapping(value = "/inbox-detail")
    public String inboxDetail(Model model) { return "inbox-detail"; }
    @RequestMapping(value = "/compose")
    public String compose(Model model) { return "compose"; }
}
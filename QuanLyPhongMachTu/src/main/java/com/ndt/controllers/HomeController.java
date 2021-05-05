package com.ndt.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    // Main templates
    @RequestMapping(value = "/")
    public String index(Model model) { return "baseLayout"; }




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
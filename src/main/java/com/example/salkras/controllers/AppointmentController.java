package com.example.salkras.controllers;

import com.example.salkras.models.Appointment;
import com.example.salkras.models.User;
import com.example.salkras.services.AppointmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class AppointmentController {
    private final AppointmentService appointmentService;

    @GetMapping("/")
    public String appointments(@RequestParam(name = "service", required = false) String service, Principal principal, Model model) {
        model.addAttribute("appointments", appointmentService.listAppointments(service));
        model.addAttribute("user", appointmentService.getUserByPrincipal(principal));
        return "appointments";
    }

    @GetMapping("/appointment/{id}")
    public String appointmentInfo(@PathVariable("id") long id, Model model) {
        model.addAttribute("appointment", appointmentService.getAppointmentById(id));
        return "appointmentinfo";
    }


    @GetMapping("/appointment/create")
    public String openCreate(Principal principal, Model model) {
        User user = appointmentService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        return "appointment-create";
    }

    @PostMapping("/appointment/create")
    public String createAppointment(@ModelAttribute Appointment appointment, Principal principal) {
        appointmentService.saveAppointment(principal, appointment);
        return "redirect:/my/appointments";
    }

    @PostMapping("/appointment/delete/{id}")
    public String deleteAppointment(@PathVariable Long id) {
        appointmentService.deleteAppointment(id);
        return "redirect:/";
    }

    @GetMapping("/my/appointments")
    public String userAppointments(Principal principal, Model model) {
        User user = appointmentService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("appointments", user.getAppointments());
        return "my-appointments";
    }

    @GetMapping("/my/appointments/{id}")
    public String userAppointments(@PathVariable Long id, Model model) {
        User user = appointmentService.getUserById(id);
        model.addAttribute("user", user);
        model.addAttribute("appointments", user.getAppointments());
        return "my-appointments";
    }
}

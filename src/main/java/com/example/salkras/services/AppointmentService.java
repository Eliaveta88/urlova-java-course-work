package com.example.salkras.services;

import com.example.salkras.models.Appointment;
import com.example.salkras.models.User;
import com.example.salkras.repositories.AppointmentRepository;
import com.example.salkras.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AppointmentService {
    private final AppointmentRepository appointmentRepository;
    private final UserRepository userRepository;

    public List<Appointment> listAppointments(String service) {
        if (service != null)  return appointmentRepository.findByService(service);
        return appointmentRepository.findAll();
    }

    public void saveAppointment(Principal principal, Appointment appointment) {
        appointment.setUser(getUserByPrincipal(principal));
        appointmentRepository.save(appointment);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void deleteAppointment(Long id) {
        appointmentRepository.deleteById(id);
    }

    public Appointment getAppointmentById(Long id) {
        return appointmentRepository.findById(id).orElse(null);
    }

    public User getUserById(Long userId) {
        return userRepository.findById(userId).orElse(null);
    }
}

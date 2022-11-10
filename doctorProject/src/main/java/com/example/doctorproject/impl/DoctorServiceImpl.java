package com.example.doctorproject.impl;

import com.example.doctorproject.dto.DoctorDto;
import com.example.doctorproject.model.Doctor;
import com.example.doctorproject.model.User;
import com.example.doctorproject.repository.DoctorRepository;
import com.example.doctorproject.service.DoctorService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class DoctorServiceImpl implements DoctorService {

    private final DoctorRepository doctorRepository;
    @Override
    public Doctor save(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    @Override
    public Doctor addDoctor(DoctorDto dto) {
        Doctor doctor = dto.map();
        return doctorRepository.save(doctor);
    }
}

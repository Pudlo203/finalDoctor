package com.example.doctorproject.service;

import com.example.doctorproject.dto.DoctorDto;
import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.Doctor;
import com.example.doctorproject.model.User;

public interface DoctorService {

    Doctor save(Doctor doctor);
   Doctor addDoctor(DoctorDto dto);
}

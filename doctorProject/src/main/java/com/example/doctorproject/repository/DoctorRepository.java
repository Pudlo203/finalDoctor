package com.example.doctorproject.repository;

import com.example.doctorproject.model.Doctor;
import com.example.doctorproject.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DoctorRepository extends JpaRepository<User,Long> {
    List<Doctor> findAllBySpecializationIgnoreCaseAndCityIgnoreCase(String specialization, String city);
}

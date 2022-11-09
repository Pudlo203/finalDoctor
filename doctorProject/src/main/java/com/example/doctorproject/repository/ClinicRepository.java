package com.example.doctorproject.repository;

import com.example.doctorproject.model.Clinic;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClinicRepository  extends JpaRepository<Clinic,Long> {

    List<Clinic> findAllByCityIgnoreCase(String city);
}

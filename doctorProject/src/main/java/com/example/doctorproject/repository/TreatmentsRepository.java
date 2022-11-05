package com.example.doctorproject.repository;

import com.example.doctorproject.model.Treatment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TreatmentsRepository extends JpaRepository<Treatment,Long> {
    List<Treatment> findAll();
}

package com.example.doctorproject.repository;

import com.example.doctorproject.model.Treatment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TreatmentsRepository extends JpaRepository<Treatment,Long> {
    List<Treatment> findAll();

    @Query(" select  t from Treatment t where t.specialization.id =:id")
    List<Treatment> findAllBySpecializationId(@Param("id") Long id);

//    List<Treatment> findAllBySpecializationIgnoreCase(String specialization);

}

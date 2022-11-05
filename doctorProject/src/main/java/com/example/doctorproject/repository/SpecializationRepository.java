package com.example.doctorproject.repository;

import com.example.doctorproject.model.Doctor;
import com.example.doctorproject.model.Specialization;
import com.example.doctorproject.model.Treatment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SpecializationRepository extends JpaRepository<Specialization, Long> {
    List<Specialization> findAll();

    @Query("select s.id from Specialization s where s.name =:name")
    Long findIdByName(@Param("name") String name);

}

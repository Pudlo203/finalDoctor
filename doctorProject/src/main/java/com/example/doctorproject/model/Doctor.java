package com.example.doctorproject.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.mapping.ToOne;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
@Data
@Table(name = "doctors")
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String name;
    @NotEmpty
    private String lastName;
    @NotNull
    private String phone;
    @NotNull
    private String email;

//    @ManyToOne
//    @ToString.Exclude
//    @EqualsAndHashCode.Exclude
//    private Specialization specialization;

    private String specialization;
    private String description;
    @NotEmpty
    private String city;

    @ManyToMany
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private List<Clinic> clinics;
}

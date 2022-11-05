package com.example.doctorproject.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
@Data
@Table(name="clinics")
public class Clinic {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String name;
    @NotEmpty
    @Size(min=6)
    private int phone;
    @NotEmpty
    @Email
    private String email;
    @NotEmpty
    private String street;
    @NotEmpty
    private int streetNumber;
    private String apartmentNumber;
    @NotEmpty
    @Size(min=6)
    private String zipCode;
    @NotEmpty
    private String city;

    @ManyToMany
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private List<User> doctors;

}

package com.example.doctorproject.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name="treatments")
public class Treatment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameTreatment;
    private float price;

//    @OneToOne
//    @ToString.Exclude
//    @EqualsAndHashCode.Exclude
//    private List<Treatment> treatment;
}

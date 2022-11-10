package com.example.doctorproject.dto;

import com.example.doctorproject.model.Clinic;
import com.example.doctorproject.model.Doctor;
import com.example.doctorproject.model.User;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.ManyToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;
@Data
public class DoctorDto {
    @NotEmpty
    @Size(min=3, max=20)
    private String name;
    @NotEmpty
    @Size(min=3, max=20)
    private String lastname;
    @NotEmpty
    @Size(min=6)
    private String phone;
    @NotEmpty
    @Email
    private String email;
    @NotEmpty
    private String specialization;
    private String description;
    @NotEmpty
    private String city;



    public Doctor map() {
        Doctor doctors = new Doctor();
        doctors.setName(this.name);
        doctors.setLastName(this.lastname);
        doctors.setPhone(this.phone);
        doctors.setEmail(this.email);
        doctors.setSpecialization(this.specialization);
        doctors.setDescription(this.description);
        doctors.setCity(this.city);
        return doctors;
    }

}

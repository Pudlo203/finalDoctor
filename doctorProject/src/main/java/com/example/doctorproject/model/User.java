package com.example.doctorproject.model;

import lombok.Data;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.time.LocalDateTime;
import java.util.Set;

@Entity
@Data
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String name;
    @NotEmpty
    private String lastName;
    @NotEmpty
    private String username;
    @NotEmpty
    private String password;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    @PrePersist
    public void created() {
        LocalDateTime time = LocalDateTime.now();
        this.setUpdatedAt(time);
        this.setCreatedAt(time);
    }

    @PreUpdate
    public void update() {
        LocalDateTime time = LocalDateTime.now();
        this.setUpdatedAt(time);
    }
}
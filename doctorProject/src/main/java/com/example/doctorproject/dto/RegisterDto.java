package com.example.doctorproject.dto;

import com.example.doctorproject.model.User;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.List;

@Data
public class RegisterDto {

    @NotNull
    private String name;
    @NotEmpty
    private String lastname;
    @NotNull
    private String username;
    @Size(min = 6)
    @NotNull
    private String password;
    @Size(min = 6)
    @NotNull
    private String confirm_password;

    public User map() {
        if(!this.password.equals(this.confirm_password)) {
            return null;
        }
        User users = new User();
        users.setName(this.name);
        users.setLastname(this.lastname);
        users.setUsername(this.username);
        users.setPassword(this.password);
        return users;
    }
}

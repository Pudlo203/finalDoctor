package com.example.doctorproject.dto;

import com.example.doctorproject.model.User;
import lombok.Data;
import org.mindrot.jbcrypt.BCrypt;

import javax.persistence.Column;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.List;

import static org.mindrot.jbcrypt.BCrypt.hashpw;

@Data
public class RegisterDto {

    @NotEmpty
   @Size(min=3, max=20)
    private String name;
    @NotEmpty
    @Size(min=3, max=20)
    private String lastname;
    @NotEmpty
    @Size(min=5, max=20)
    @Column(unique = true)
    private String username;
    @NotEmpty
    @Size(min=5, max=20)
    private String password;
    @NotEmpty
    @Size(min=5, max=20)
    private String confirmPassword;

    public User map() {
        if(!this.password.equals(this.confirmPassword)) {
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

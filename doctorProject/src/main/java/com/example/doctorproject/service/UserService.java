package com.example.doctorproject.service;

import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.User;

import java.util.List;

public interface UserService {

     void update(User user);

    User save(User user);
    List<User> findAll();
    User findByUsername(String username);
    User registerUser(RegisterDto dto);

}

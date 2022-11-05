package com.example.doctorproject.impl;

import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.User;
import com.example.doctorproject.repository.UserRepository;
import com.example.doctorproject.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;


    @Override
    public User save(User user) {
        return null;
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findByUsername(String username) {
        return null;
    }

    @Override
    public User registerUser(RegisterDto dto) {
        return null;
    }
}

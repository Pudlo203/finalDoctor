package com.example.doctorproject.impl;

import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.User;
import com.example.doctorproject.repository.UserRepository;
import com.example.doctorproject.service.UserService;
import lombok.RequiredArgsConstructor;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
    private static final String SALT = "";
    private final UserRepository userRepository;

    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, SALT);
    }

    @Override
    public void update(User user) {
        userRepository.save(user);
    }

    @Override
    public User save(User user) {
//        user.setPassword();
        return userRepository.save(user);
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User registerUser(RegisterDto dto) {
        User user = dto.map();
//        user.setPassword();
        return userRepository.save(user);
    }
}

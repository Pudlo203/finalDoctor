package com.example.doctorproject.repository;

import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    @Query("select u from User u where u.username=:username")
    User findByUsername(@Param("username") String username);

}

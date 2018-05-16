package com.nail.jwt.controller;

import com.nail.jwt.exception.BadRequestException;
import com.nail.jwt.model.entity.User;
import com.nail.jwt.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/{id}")
    public User getUser(@PathVariable final String id) {
        if (id.isEmpty() || id == null) {
            throw new BadRequestException("ID is null or empty!");
        }
        return userRepository.findById(Long.parseLong(id)).get();
    }
}

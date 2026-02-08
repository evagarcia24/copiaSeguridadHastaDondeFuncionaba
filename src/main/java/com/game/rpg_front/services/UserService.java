package com.game.rpg_front.services;

import com.game.rpg_front.models.User;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class UserService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String URL = "http://localhost:8084/api/users";

    public List<User> getAllUsers() {
        User[] users = restTemplate.getForObject(URL, User[].class);
        return Arrays.asList(users);
    }
}


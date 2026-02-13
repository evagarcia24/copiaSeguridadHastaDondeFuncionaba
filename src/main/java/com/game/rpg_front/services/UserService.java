package com.game.rpg_front.services;

import com.game.rpg_front.models.User;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class UserService {

    private final RestTemplate restTemplate = new RestTemplate();

    public List<?> getAllUsers() {
        String url = "http://localhost:8084/api/users";
        User[] users = restTemplate.getForObject(url, User[].class);
        return Arrays.asList(users);
    }

}
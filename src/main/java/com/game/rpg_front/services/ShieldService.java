package com.game.rpg_front.services;

import com.game.rpg_front.models.Shield;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class ShieldService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String URL = "http://localhost:8084/api/shields";

    public List<Shield> getAllShields() {
        Shield[] shields = restTemplate.getForObject(URL, Shield[].class);
        return Arrays.asList(shields);
    }
}

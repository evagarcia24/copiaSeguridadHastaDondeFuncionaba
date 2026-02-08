package com.game.rpg_front.services;

import com.game.rpg_front.models.Weapon;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class WeaponService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String URL = "http://localhost:8084/api/weapons";

    public List<Weapon> getAllWeapons() {
        Weapon[] weapons = restTemplate.getForObject(URL, Weapon[].class);
        return Arrays.asList(weapons);
    }
}

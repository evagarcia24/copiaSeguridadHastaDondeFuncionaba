package com.game.rpg_front.services;

import com.game.rpg_front.models.Hero;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class HeroService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String URL = "http://localhost:8084/api/hero-names";

    public List<Hero> getAllHeroes() {
        Hero[] heroes = restTemplate.getForObject(URL, Hero[].class);
        return Arrays.asList(heroes);
    }
}

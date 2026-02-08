package com.game.rpg_front.services;

import com.game.rpg_front.models.Villain;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class VillainService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String URL = "http://localhost:8084/api/villain-names";

    public List<Villain> getAllVillains() {
        Villain[] villains = restTemplate.getForObject(URL, Villain[].class);
        return Arrays.asList(villains);
    }
}

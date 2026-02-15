package com.game.rpg_front.controllers;

import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;

@Component
public class AuthApiClient {

    private final WebClient webClient;

    public AuthApiClient() {
        this.webClient = WebClient.builder()
                .baseUrl("http://localhost:8084") // BACK principal
                .build();
    }

    public boolean autorizarAdmin() {
        try {
            webClient.post()
                    .uri("/api/autorizar-admin")
                    .retrieve()
                    .bodyToMono(Void.class)
                    .block();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}

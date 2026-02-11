package com.game.rpg_front.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class HeroController {

    private final String BACKEND_URL = "http://localhost:8084/api/character-system-heroes";

    @GetMapping("/roster")
    public String mostrarRoster(Model model) {
        RestTemplate restTemplate = new RestTemplate();
        try {
            // 1. Llamamos a la API de tu compañero para traer los héroes
            List<Map<String, Object>> heroes = restTemplate.getForObject(BACKEND_URL, List.class);
            
            // 2. Pasamos los datos al HTML
            model.addAttribute("heroes", heroes);
        } catch (Exception e) {
            model.addAttribute("error", "No se pudo conectar con el servidor de héroes.");
        }
        return "seleccion-heroes";
    }
    
    @PostMapping("/guardar-roster")
    public String guardarRoster(@RequestParam List<String> characterIds, Model model) {
        RestTemplate restTemplate = new RestTemplate();
        String url = "http://localhost:8084/api/character-rosters";

        // Creamos el paquete de datos para enviar
        Map<String, Object> request = Map.of("characterSystemHeroIds", characterIds);

        try {
            // Enviamos los datos al Back
            Map respuesta = restTemplate.postForObject(url, request, Map.class);
            
            // Guardamos el ID que nos devuelve el Back para mostrarlo
            model.addAttribute("rosterId", respuesta.get("characterRosterId"));
            return "confirmacion-roster"; // Esta será tu nueva pantalla de "Éxito"
        } catch (Exception e) {
            model.addAttribute("error", "Error al crear el equipo: " + e.getMessage());
            return "seleccion-heroes";
        }
    }
}

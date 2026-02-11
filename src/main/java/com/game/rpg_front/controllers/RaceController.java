package com.game.rpg_front.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;
import java.util.List;

@Controller
public class RaceController {
//
//	@GetMapping("/roster")
//	public String mostrarTodo(Model model) {
//	    RestTemplate restTemplate = new RestTemplate();
//	    
//	    // Definimos las URLs del backend de tu compañero (puerto 8084)
//	    String urlRaces = "http://localhost:8084/api/user-races";
//	    String urlUserHeroes = "http://localhost:8084/api/character-user-heroes";
//	    String urlSystemHeroes = "http://localhost:8084/api/character-system-heroes";
//
//	    try {
//	        // Pedimos los datos al backend
//	        List races = restTemplate.getForObject(urlRaces, List.class);
//	        List userHeroes = restTemplate.getForObject(urlUserHeroes, List.class);
//	        List systemHeroes = restTemplate.getForObject(urlSystemHeroes, List.class);
//
//	        // Pasamos las 3 listas al modelo con los nombres EXACTOS que usa el HTML de tu compañero
//	        model.addAttribute("userRaces", races);
//	        model.addAttribute("characterUserHeroes", userHeroes);
//	        model.addAttribute("characterSystemHeroes", systemHeroes);
//
//	    } catch (Exception e) {
//	        model.addAttribute("error", "Error de conexión: " + e.getMessage());
//	    }
//
//	    return "seleccion-heroes"; // El nombre de tu archivo HTML principal
//	}
}
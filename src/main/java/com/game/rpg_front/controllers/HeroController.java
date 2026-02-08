package com.game.rpg_front.controllers;

import com.game.rpg_front.services.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/heroes")
public class HeroController {

    @Autowired
    private HeroService heroService;

    @GetMapping
    public String listarHeroes(Model model) {
        model.addAttribute("heroes", heroService.getAllHeroes());
        return "heroes"; // heroes.html
    }
}

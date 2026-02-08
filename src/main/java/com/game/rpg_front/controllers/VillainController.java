package com.game.rpg_front.controllers;

import com.game.rpg_front.services.VillainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/villains")
public class VillainController {

    @Autowired
    private VillainService villainService;

    @GetMapping
    public String listarVillains(Model model) {
        model.addAttribute("villains", villainService.getAllVillains());
        return "villains"; // <-- carga villains.html
    }
}

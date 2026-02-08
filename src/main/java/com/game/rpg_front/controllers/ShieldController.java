package com.game.rpg_front.controllers;

import com.game.rpg_front.services.ShieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shields")
public class ShieldController {

    @Autowired
    private ShieldService shieldService;

    @GetMapping
    public String listarShields(Model model) {
        model.addAttribute("shields", shieldService.getAllShields());
        return "shields"; // shields.html
    }
}

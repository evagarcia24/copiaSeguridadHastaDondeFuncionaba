package com.game.rpg_front.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CreateCreature {


    @GetMapping("/create-creature")
    public String createCreature() {
        return "create-creature";
    }
}

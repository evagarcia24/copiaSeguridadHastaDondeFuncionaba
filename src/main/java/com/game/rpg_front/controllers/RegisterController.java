package com.game.rpg_front.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RegisterController {


    @GetMapping("/register")
    public String registro() {
        return "register";
    }

   
}


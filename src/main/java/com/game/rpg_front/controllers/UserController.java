package com.game.rpg_front.controllers;

import com.game.rpg_front.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String listarUsuarios(Model model) {
        model.addAttribute("usuarios", userService.getAllUsers());
        return "users"; // <-- IMPORTANTE
    }
}


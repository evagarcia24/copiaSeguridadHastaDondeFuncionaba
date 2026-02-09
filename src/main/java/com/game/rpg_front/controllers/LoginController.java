package com.game.rpg_front.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String mostrarLogin() {
        return "login";
    }

    @PostMapping("/login")  // ← ESTO FALTABA
    public String procesarLogin(
            @RequestParam String username,
            @RequestParam String password,
            Model model,
            HttpSession session) {

        System.out.println("Usuario intentando entrar: " + username);

        // Validación temporal para pruebas
        if (!username.equals("admin")) {
            model.addAttribute("error", "Usuario no dado de alta");
            return "login";
        }

        if (!password.equals("1234")) {
            model.addAttribute("error", "Contraseña incorrecta");
            return "login";
        }

        // Login correcto - ir al juego
        session.setAttribute("username", username);
        return "redirect:/game";
    }
}
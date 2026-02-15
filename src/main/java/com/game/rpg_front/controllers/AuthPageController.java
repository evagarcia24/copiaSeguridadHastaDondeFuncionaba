package com.game.rpg_front.controllers;

import com.game.rpg_front.controllers.AuthApiClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AuthPageController {

    private final AuthApiClient authApiClient;

    public AuthPageController(AuthApiClient authApiClient) {
        this.authApiClient = authApiClient;
    }

    @GetMapping("/auth")
    public String showPage() {
        return "auth"; // template auth.html
    }

    @PostMapping("/auth")
    public String authorize() {
        boolean ok = authApiClient.autorizarAdmin();

        if(ok) {
            // Redirige a la página del admin si está autorizado
            return "redirect:/admin/users";  // <-- aquí pones la URL de tu página de administración
        } else {
            // Si no, vuelve a la página de autorización con mensaje
            return "auth"; 
        }
    }
}

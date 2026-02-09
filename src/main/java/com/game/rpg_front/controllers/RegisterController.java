package com.game.rpg_front.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.game.rpg_front.services.UserService;


@Controller
public class RegisterController {

    @Autowired
    private UserService usuarioService;

    @PostMapping("/register")
    public String registrar(@RequestParam String username,
                            @RequestParam String email,
                            @RequestParam String password,
                            @RequestParam("confirm_password") String confirm,
                            Model model) {

        if (!password.equals(confirm)) {
            model.addAttribute("error", "Las contraseñas no coinciden");
            return "registro"; // tu plantilla registro.html
        }

        UsuarioDTO dto = new UsuarioDTO();
        dto.setUsername(username);
        dto.setEmail(email);
        dto.setPassword(password);

        try {
            usuarioService.registrarUsuario(dto);
            return "redirect:/login?success";
        } catch (BusinessException e) {
            model.addAttribute("error", e.getMessage());
            return "registro";
        }
    }
}



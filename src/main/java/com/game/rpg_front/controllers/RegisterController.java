package com.game.rpg_front.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.game.rpg_front.dto.UserDTO;
import com.game.rpg_front.services.UserService;


@Controller
public class RegisterController {

    @Autowired
    private UserService usuarioService;
    
    @GetMapping("/register")
    public String showRegisterForm() {
        return "register"; // nombre del template register.html
    }



    @PostMapping("/register")
    public String registrar(@RequestParam String username,
                            @RequestParam String email,
                            @RequestParam String password,
                            @RequestParam("confirm_password") String confirm,
                            Model model) throws BusinessException {

        if (!password.equals(confirm)) {
            model.addAttribute("error", "Las contraseñas no coinciden");
            return "register"; // tu plantilla register.html
        }

        UserDTO dto = new UserDTO();
        dto.setUsername(username);
        dto.setEmail(email);
        dto.setPassword(password);

        usuarioService.registrarUsuario(dto);
		return "redirect:/login?success";
    }
}



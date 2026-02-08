package com.game.rpg_front.controllers;

import com.game.rpg_front.services.WeaponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/weapons")
public class WeaponController {

    @Autowired
    private WeaponService weaponService;

    @GetMapping
    public String listarWeapons(Model model) {
        model.addAttribute("weapons", weaponService.getAllWeapons());
        return "weapons"; // weapons.html
    }
}

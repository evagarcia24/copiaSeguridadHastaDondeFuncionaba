package com.game.rpg_front.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.game.rpg_front.services.HeroService;
import com.game.rpg_front.services.ShieldService;
import com.game.rpg_front.services.VillainService;
import com.game.rpg_front.services.WeaponService;

import jakarta.servlet.http.HttpSession;

@Controller
public class GameController {

    @Autowired
    private HeroService heroService;

    @GetMapping("/choose-hero")
    public String chooseHero(Model model) {
        model.addAttribute("heroes", heroService.getAllHeroes());
        return "choose-hero";
    }

    @PostMapping("/select-hero")
    public String selectHero(@RequestParam String heroId, HttpSession session) {
        session.setAttribute("selectedHero", heroId);
        return "redirect:/choose-weapon";
    }
    
    @Autowired
    private WeaponService weaponService;

    @GetMapping("/choose-weapon")
    public String chooseWeapon(Model model) {
        model.addAttribute("weapons", weaponService.getAllWeapons());
        return "choose-weapon";
    }

    @PostMapping("/select-weapon")
    public String selectWeapon(@RequestParam String weaponId, HttpSession session) {
        session.setAttribute("selectedWeapon", weaponId);
        return "redirect:/choose-shield";
    }

    @Autowired
    private ShieldService shieldService;

    @GetMapping("/choose-shield")
    public String chooseShield(Model model) {
        model.addAttribute("shields", shieldService.getAllShields());
        return "choose-shield";
    }

    @PostMapping("/select-shield")
    public String selectShield(@RequestParam String shieldId, HttpSession session) {
        session.setAttribute("selectedShield", shieldId);
        return "redirect:/choose-villain";
    }

    @Autowired
    private VillainService villainService;

    @GetMapping("/choose-villain")
    public String chooseVillain(Model model) {
        model.addAttribute("villains", villainService.getAllVillains());
        return "choose-villain";
    }

    @PostMapping("/select-villain")
    public String selectVillain(@RequestParam String villainId, HttpSession session) {
        session.setAttribute("selectedVillain", villainId);
        return "redirect:/combat";
    }
    
//    @GetMapping("/combat")
//    public String combat(Model model, HttpSession session) {
//
//        String heroId = (String) session.getAttribute("selectedHero");
//        String weaponId = (String) session.getAttribute("selectedWeapon");
//        String shieldId = (String) session.getAttribute("selectedShield");
//        String villainId = (String) session.getAttribute("selectedVillain");
//
//        // Recuperar objetos completos
//        var hero = heroService.getAllHeroes().stream()
//                .filter(h -> h.getHeroId().equals(heroId))
//                .findFirst().orElse(null);
//
//        var weapon = weaponService.getAllWeapons().stream()
//                .filter(w -> w.getWeaponId().equals(weaponId))
//                .findFirst().orElse(null);
//
//        var shield = shieldService.getAllShields().stream()
//                .filter(s -> s.getShieldId().equals(shieldId))
//                .findFirst().orElse(null);
//
//        var villain = villainService.getAllVillains().stream()
//                .filter(v -> v.getVillainId().equals(villainId))
//                .findFirst().orElse(null);
//
//        // Simulación simple del combate
//        String log = "";
//        String winner = "";
//
//        int heroPower = hero.getPower() + weapon.getDescription().length() % 5 + shield.getArmorClass();
//        int villainPower = villain.getPower() + villain.getDescription().length() % 5;
//
//        if (heroPower >= villainPower) {
//            winner = hero.getName();
//            log = hero.getName() + " derrota a " + villain.getName() + " con su " + weapon.getName() + "!";
//        } else {
//            winner = villain.getName();
//            log = villain.getName() + " derrota a " + hero.getName() + " sin piedad.";
//        }
//
//        model.addAttribute("hero", hero);
//        model.addAttribute("weapon", weapon);
//        model.addAttribute("shield", shield);
//        model.addAttribute("villain", villain);
//        model.addAttribute("winner", winner);
//        model.addAttribute("log", log);

//        return "combat";
//    }

    @GetMapping("/game")
    public String mostrarGame() {
        return "game-test";  // ← Cambia "game" por "game-test"
    }
    
}

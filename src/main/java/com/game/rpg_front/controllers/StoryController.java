package com.game.rpg_front.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.game.rpg_front.models.Story;
import com.game.rpg_front.services.StoryService;

@Controller
@RequestMapping("/stories")
public class StoryController {

    private final StoryService storyService;

    public StoryController(StoryService storyService) {
        this.storyService = storyService;
    }

    @GetMapping
    public String listStories(Model model) {
        List<Story> stories = storyService.getAllStories();
        model.addAttribute("stories", stories);
        return "stories";
    }

    @PostMapping("/new")
    public String createStory() {
        storyService.createStory("democracia");
        return "redirect:/stories";
    }

    @PostMapping("/delete/{id}")
    public String deleteStory(@PathVariable String id) {
        storyService.deleteStory(id);
        return "redirect:/stories";
    }
}

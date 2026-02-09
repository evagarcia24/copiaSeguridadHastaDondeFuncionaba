package com.game.rpg_front.services;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.game.rpg_front.models.Story;

@Service
public class StoryService {

	private final RestTemplate restTemplate = new RestTemplate();
	private final String BASE_URL = "http://localhost:8084/api/stories";

	public List<Story> getAllStories() {
		Story[] stories = restTemplate.getForObject(BASE_URL, Story[].class);
		return Arrays.asList(stories);
	}

	public void createStory(String packId) {
		restTemplate.getForObject(BASE_URL + "/new/" + packId, Story.class);
	}

	public void deleteStory(String id) {
		restTemplate.delete(BASE_URL + "/" + id);
	}
}

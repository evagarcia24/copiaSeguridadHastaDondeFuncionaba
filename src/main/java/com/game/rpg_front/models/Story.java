package com.game.rpg_front.models;

import java.util.List;
import java.util.UUID;

public class Story {

	private UUID storyId;
	private String packId;
	private List<Integer> categories;
	private List<UUID> encounters;
	private List<UUID> villains;
	private List<VillainNameDTO> villainNames;
	private List<UUID> narrations;

	public UUID getStoryId() {
		return storyId;
	}

	public void setStoryId(UUID storyId) {
		this.storyId = storyId;
	}

	public String getPackId() {
		return packId;
	}

	public void setPackId(String packId) {
		this.packId = packId;
	}

	public List<Integer> getCategories() {
		return categories;
	}

	public void setCategories(List<Integer> categories) {
		this.categories = categories;
	}

	public List<UUID> getEncounters() {
		return encounters;
	}

	public void setEncounters(List<UUID> encounters) {
		this.encounters = encounters;
	}

	public List<UUID> getVillains() {
		return villains;
	}

	public void setVillains(List<UUID> villains) {
		this.villains = villains;
	}

	public List<VillainNameDTO> getVillainNames() {
		return villainNames;
	}

	public void setVillainNames(List<VillainNameDTO> villainNames) {
		this.villainNames = villainNames;
	}

	public List<UUID> getNarrations() {
		return narrations;
	}

	public void setNarrations(List<UUID> narrations) {
		this.narrations = narrations;
	}

	public static class VillainNameDTO {
		private Integer categoryId;
		private String name;

		public Integer getCategoryId() {
			return categoryId;
		}

		public void setCategoryId(Integer categoryId) {
			this.categoryId = categoryId;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
	}
}

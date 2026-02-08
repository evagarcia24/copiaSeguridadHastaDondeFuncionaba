package com.game.rpg_front.models;

public class Shield {

    private String shieldId;
    private String packId;
    private String name;
    private String description;
    private int armorClass;
    private int dodgeBonus;

    public String getShieldId() {
        return shieldId;
    }

    public void setShieldId(String shieldId) {
        this.shieldId = shieldId;
    }

    public String getPackId() {
        return packId;
    }

    public void setPackId(String packId) {
        this.packId = packId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getArmorClass() {
        return armorClass;
    }

    public void setArmorClass(int armorClass) {
        this.armorClass = armorClass;
    }

    public int getDodgeBonus() {
        return dodgeBonus;
    }

    public void setDodgeBonus(int dodgeBonus) {
        this.dodgeBonus = dodgeBonus;
    }
}


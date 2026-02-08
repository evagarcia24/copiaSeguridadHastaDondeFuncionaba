-- V73__create_character.sql

CREATE TABLE character (
    character_id RAW(16) NOT NULL,
    user_id RAW(16) NOT NULL,
    hero_race_id RAW(16),
    custom_race_id RAW(16),
    status VARCHAR2(20 CHAR) NOT NULL,
    name VARCHAR2(64 CHAR) NOT NULL,

    CONSTRAINT pk_character
        PRIMARY KEY (character_id),

    CONSTRAINT fk_character_user
        FOREIGN KEY (user_id)
        REFERENCES app_user(user_id),

    CONSTRAINT fk_character_hero_race
        FOREIGN KEY (hero_race_id)
        REFERENCES hero_race(race_id),

    CONSTRAINT fk_character_custom_race
        FOREIGN KEY (custom_race_id)
        REFERENCES custom_race(custom_race_id),

    CONSTRAINT chk_character_status
        CHECK (status IN ('ACTIVE', 'ARCHIVED')),

    CONSTRAINT chk_character_race_xor
        CHECK (
            (hero_race_id IS NOT NULL AND custom_race_id IS NULL)
            OR
            (hero_race_id IS NULL AND custom_race_id IS NOT NULL)
        )
);

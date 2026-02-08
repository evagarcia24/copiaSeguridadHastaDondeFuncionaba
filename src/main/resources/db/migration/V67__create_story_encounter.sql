-- V67__create_story_encounter.sql

CREATE TABLE story_encounter (
    story_id     RAW(16)    NOT NULL,
    position     NUMBER(10) NOT NULL,
    encounter_id RAW(16)    NOT NULL,

    CONSTRAINT pk_story_encounter
        PRIMARY KEY (story_id, position),

    CONSTRAINT fk_story_encounter_story
        FOREIGN KEY (story_id)
        REFERENCES story(story_id),

    CONSTRAINT fk_story_encounter_encounter
        FOREIGN KEY (encounter_id)
        REFERENCES encounter(encounter_id)
);

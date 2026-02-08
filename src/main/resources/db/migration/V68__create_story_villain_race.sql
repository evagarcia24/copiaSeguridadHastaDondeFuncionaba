-- V68__create_story_villain_race.sql

CREATE TABLE story_villain_race (
    story_id       RAW(16)    NOT NULL,
    position       NUMBER(10) NOT NULL,
    villain_race_id RAW(16)   NOT NULL,

    CONSTRAINT pk_story_villain_race
        PRIMARY KEY (story_id, position),

    CONSTRAINT fk_story_villain_race_story
        FOREIGN KEY (story_id)
        REFERENCES story(story_id),

    CONSTRAINT fk_story_villain_race_villain_race
        FOREIGN KEY (villain_race_id)
        REFERENCES villain_race(race_id)
);

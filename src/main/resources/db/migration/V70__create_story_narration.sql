-- V70__create_story_narration.sql

CREATE TABLE story_narration (
    story_id     RAW(16)    NOT NULL,
    position     NUMBER(10) NOT NULL,
    narration_id RAW(16)    NOT NULL,

    CONSTRAINT pk_story_narration
        PRIMARY KEY (story_id, position),

    CONSTRAINT fk_story_narration_story
        FOREIGN KEY (story_id)
        REFERENCES story(story_id),

    CONSTRAINT fk_story_narration_narration
        FOREIGN KEY (narration_id)
        REFERENCES narration(narration_id)
);

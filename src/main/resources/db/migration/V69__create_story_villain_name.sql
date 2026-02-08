-- V69__create_story_villain_name.sql

CREATE TABLE story_villain_name (
    story_id    RAW(16)          NOT NULL,
    position    NUMBER(10)       NOT NULL,
    category_id NUMBER(10)       NOT NULL,
    name        VARCHAR2(40 CHAR) NOT NULL,

    CONSTRAINT pk_story_villain_name
        PRIMARY KEY (story_id, position),

    CONSTRAINT fk_story_villain_name_story
        FOREIGN KEY (story_id)
        REFERENCES story(story_id),

    CONSTRAINT fk_story_villain_name_villain_name
        FOREIGN KEY (category_id, name)
        REFERENCES villain_name(category_id, name)
);

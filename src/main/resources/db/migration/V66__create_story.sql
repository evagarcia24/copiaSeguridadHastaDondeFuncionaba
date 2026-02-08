-- V66__create_story.sql

CREATE TABLE story (
    story_id    RAW(16)      NOT NULL,
    pack_id     VARCHAR2(60) NOT NULL,
    category_1  NUMBER(10)   NOT NULL,
    category_2  NUMBER(10)   NOT NULL,
    category_3  NUMBER(10)   NOT NULL,
    category_4  NUMBER(10)   NOT NULL,

    CONSTRAINT pk_story
        PRIMARY KEY (story_id),

    CONSTRAINT fk_story_pack
        FOREIGN KEY (pack_id)
        REFERENCES pack(pack_id),

    CONSTRAINT fk_story_category_1
        FOREIGN KEY (category_1)
        REFERENCES category(category_id),

    CONSTRAINT fk_story_category_2
        FOREIGN KEY (category_2)
        REFERENCES category(category_id),

    CONSTRAINT fk_story_category_3
        FOREIGN KEY (category_3)
        REFERENCES category(category_id),

    CONSTRAINT fk_story_category_4
        FOREIGN KEY (category_4)
        REFERENCES category(category_id)
);

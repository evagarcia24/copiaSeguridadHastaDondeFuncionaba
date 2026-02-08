-- V07__create_encounter.sql

CREATE TABLE encounter (
    encounter_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    name VARCHAR2(64) NOT NULL,
    description VARCHAR2(255),
    option_interact_label VARCHAR2(128),
    option_avoid_label VARCHAR2(128),

    CONSTRAINT pk_encounter PRIMARY KEY (encounter_id),
    CONSTRAINT fk_encounter_pack
        FOREIGN KEY (pack_id)
        REFERENCES pack(pack_id),

    CONSTRAINT fk_encounter_category
        FOREIGN KEY (category_id)
        REFERENCES category(category_id)
);

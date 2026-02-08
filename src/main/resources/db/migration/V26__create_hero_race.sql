-- V26__create_hero_race.sql

CREATE TABLE hero_race (
    race_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    name VARCHAR2(64) NOT NULL,
    description VARCHAR2(255),
    base_attack NUMBER(10),
    base_magic NUMBER(10),
    base_defense NUMBER(10),
    base_speed NUMBER(10),

    CONSTRAINT pk_hero_race
        PRIMARY KEY (race_id),

    CONSTRAINT fk_hero_race_pack
        FOREIGN KEY (pack_id)
        REFERENCES pack(pack_id)
);

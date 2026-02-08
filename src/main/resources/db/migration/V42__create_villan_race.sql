-- V42__create_villain_race.sql

CREATE TABLE villain_race (
    race_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    name VARCHAR2(64 CHAR) NOT NULL,
    description VARCHAR2(255 CHAR),
    base_attack NUMBER(10),
    base_magic NUMBER(10),
    base_defense NUMBER(10),
    base_speed NUMBER(10),

    CONSTRAINT pk_villain_race
        PRIMARY KEY (race_id),

    CONSTRAINT fk_villain_race_pack
        FOREIGN KEY (pack_id)
        REFERENCES pack(pack_id),

    CONSTRAINT fk_villain_race_category
        FOREIGN KEY (category_id)
        REFERENCES category(category_id)
);

-- V33__create_shield.sql

CREATE TABLE shield (
    shield_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    name VARCHAR2(80 CHAR) NOT NULL,
    description VARCHAR2(300 CHAR) NOT NULL,
    armor_class NUMBER(10) NOT NULL,
    dodge_bonus NUMBER(10) NOT NULL,

    CONSTRAINT pk_shield
        PRIMARY KEY (shield_id),

    CONSTRAINT fk_shield_pack
        FOREIGN KEY (pack_id)
        REFERENCES pack(pack_id)
);

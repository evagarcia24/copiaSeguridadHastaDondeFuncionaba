-- V25__create_hero_name.sql

CREATE TABLE hero_name (
    name VARCHAR2(64 CHAR) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,

    CONSTRAINT pk_hero_name
        PRIMARY KEY (name),

    CONSTRAINT fk_hero_name_pack
        FOREIGN KEY (pack_id)
        REFERENCES pack(pack_id)
);

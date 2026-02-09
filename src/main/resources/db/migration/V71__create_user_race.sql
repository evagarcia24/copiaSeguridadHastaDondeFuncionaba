-- V71__create_user_race.sql

CREATE TABLE user_race (
    user_race_id RAW(16) NOT NULL,
    user_id RAW(16) NOT NULL,
    origin VARCHAR2(20 CHAR) NOT NULL,
    name VARCHAR2(64 CHAR) NOT NULL,
    description VARCHAR2(255 CHAR),
    base_attack NUMBER(10),
    base_magic NUMBER(10),
    base_defense NUMBER(10),
    base_speed NUMBER(10),

    CONSTRAINT pk_user_race
        PRIMARY KEY (user_race_id),

    CONSTRAINT fk_user_race_user
        FOREIGN KEY (user_id)
        REFERENCES app_user(user_id),

    CONSTRAINT chk_user_race_origin
        CHECK (origin IN ('SYSTEM', 'CUSTOM'))
);

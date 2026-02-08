-- V72__create_custom_race_name.sql

CREATE TABLE custom_race_name (
    user_id RAW(16) NOT NULL,
    name VARCHAR2(64 CHAR) NOT NULL,

    CONSTRAINT pk_custom_race_name
        PRIMARY KEY (user_id, name),

    CONSTRAINT fk_custom_race_name_user
        FOREIGN KEY (user_id)
        REFERENCES app_user(user_id)
);

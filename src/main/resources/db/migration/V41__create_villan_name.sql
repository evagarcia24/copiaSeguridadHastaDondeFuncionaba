-- V42__create_villain_name.sql

CREATE TABLE villain_name (
    category_id NUMBER(10) NOT NULL,
    name VARCHAR2(40 CHAR) NOT NULL,

    CONSTRAINT pk_villain_name
        PRIMARY KEY (category_id, name),

    CONSTRAINT fk_villain_name_category
        FOREIGN KEY (category_id)
        REFERENCES category(category_id)
);

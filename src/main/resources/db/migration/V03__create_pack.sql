-- V03__create_pack.sql

CREATE TABLE pack (
    pack_id VARCHAR2(60) NOT NULL,
    version VARCHAR2(20),
    created_at TIMESTAMP,
    description VARCHAR2(255),

    CONSTRAINT pk_pack PRIMARY KEY (pack_id)
);

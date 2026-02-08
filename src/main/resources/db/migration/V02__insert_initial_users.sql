-- V02__insert_initial_users.sql

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'PLAYER', 'player_one', 'player_one@mail.com', '123', 0, NULL
);

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'PLAYER', 'player_two', 'player_two@mail.com', '123', 0, NULL
);

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'PLAYER', 'player_three', 'player_three@mail.com', '123', 0, NULL
);

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'PLAYER', 'player_four', 'player_four@mail.com', '123', 0, NULL
);

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'PLAYER', 'player_five', 'player_five@mail.com', '123', 0, NULL
);

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'ADMIN', 'admin_one', 'admin_one@mail.com', '123', 0, NULL
);

INSERT INTO app_user (
    user_id, role, name, email, password_hash, banned, picture_id
) VALUES (
    SYS_GUID(), 'ADMIN', 'admin_two', 'admin_two@mail.com', '123', 0, NULL
);

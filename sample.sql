DROP TABLE IF EXISTS app_users;

CREATE TABLE app_users(
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    PRIMARY KEY(id),
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL
);

INSERT INTO app_users(firstname, lastname)
SELECT md5(RANDOM()::TEXT), md5(RANDOM()::TEXT) FROM generate_series(1, 154821)
;
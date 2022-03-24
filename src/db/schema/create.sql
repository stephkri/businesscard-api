DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS cards CASCADE;
DROP TABLE IF EXISTS user_cards CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE cards (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  fullname VARCHAR(255),
  email VARCHAR(255),
  photo VARCHAR(255),
  title VARCHAR(255),
  company VARCHAR(255),
  phone VARCHAR(255),
  github VARCHAR(255),
  linkedin VARCHAR(255),
  facebook VARCHAR(255),
  instagram VARCHAR(255),
  bio VARCHAR(255)
);

CREATE TABLE user_cards (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  card_id INTEGER REFERENCES cards(id) ON DELETE CASCADE,
  isSelfCard BOOLEAN
);



CREATE DATABASE todoapp;

CREATE TABLE todos(
  id VARCHAR(255) PRIMARY KEY,
  user_email VARCHAR(255),
  title VARCHAR(255),
  progress INT,
  date VARCHAR(300)
);

CREATE TABLE users(
  email VARCHAR(255) PRIMARY KEY,
  hashed_password VARCHAR(255)
);

INSERT INTO todos(
  id,
  user_email,
  title,
  progress,
  date
) VALUES(
  '0',
  'Kara@test.com',
  'First Todo',
  10,
  ';Fri Feb 23 2024 20:40:30 GMT+0400 (Gulf Standard Time)'
)
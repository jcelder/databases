CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id INT AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  id INT AUTO_INCREMENT,
  room VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  id INT AUTO_INCREMENT,
  userId INT,
  roomId INT,
  text TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (roomId) REFERENCES rooms(id)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/


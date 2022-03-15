CREATE DATABASE mySQL_guided_inquiry;

USE mySQL_guided_inquiry;

-- Very Easy
CREATE TABLE fav_cars (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
make VARCHAR(20),
model VARCHAR(20),
year INT
);

INSERT INTO fav_cars (make, model, year) 
VALUES ('Toyota', 'Supra', '2022'), ('Honda', 'Type R', '2021'), 
('Chevrolet', 'Camaro', '2019'), ('Subaru', 'BRZ', '2020'), ('Mazda', 'MX-5 Miata', '2021');

SELECT * FROM fav_cars;

-- EASY 
CREATE TABLE fav_books(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50),
publish_date INT,
author_first_name VARCHAR (50),
author_last_name VARCHAR (50)
);

INSERT INTO fav_books (title, publish_date, author_first_name, author_last_name) 
VALUES ('Naruto', 1999, 'Masashi', 'Kishimoto'),
('Dragon Ball', 1984, 'Akira', 'Toriyama'),
('One Piece', 1997, 'Eiichiro', 'Oda'),
('Bleach', 2001, 'Tite', 'Kubo'),
('Tokyo Ghoul', 2011, 'Sui', 'Ishida');

INSERT INTO fav_books (title, publish_date, author_first_name, author_last_name) 
VALUES ('Seven Deadly Sins', 2012, 'Nakaba', 'Suzuki'),
('Code Geass', 2007, 'Goro', 'Taniguchi');

DELETE FROM fav_books WHERE id = 2;

SELECT * FROM fav_books;
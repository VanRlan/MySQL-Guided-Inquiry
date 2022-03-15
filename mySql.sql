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

-- medium
CREATE TABLE fav_movies (
movieid INT NOT NULL AUTO_INCREMENT,
title VARCHAR(50),
release_date INT,
rating ENUM('G', 'PG', 'PG-13', 'R'),
PRIMARY KEY(movie_id)
);

INSERT INTO fav_movies (title, release_date, rating) VALUES
('MUGEN TRAIN', 2021, 'R'),
('SPIDER MAN NO WAY HOME', 2022, 'PG-13'),
('MINIONS', 2016, 'PG'),
('YOUR NAME', 2017, 'PG'),
('A SILENT VOICE', 2016, 'PG'),
('JUTSU KAISEN 0', 2022, 'R'),
('DRAGON BALL SUPER BROLY', 2018, 'PG-13'),
('TRAIN TO BUSAN', 2016, 'R'),
('THE MAZE RUNNER', 2014, 'R'),
('BBORUTO', 2015, 'PG-13');

SELECT * FROM fav_movies WHERE title LIKE 's%';

-- hard
ALTER TABLE fav_movies ADD director_firstname VARCHAR(50); 
ALTER TABLE fav_movies ADD director_lastname VARCHAR(50);

UPDATE fav_movies SET director_firstname = 'Van', 
director_lastname= 'Rlan' WHERE movie_id >= 1 ;

SELECT director_firstname, director_lastname, 
CONCAT (director_firstname,' ', director_lastname) AS director
FROM fav_movies;

SELECT * FROM fav_movies ORDER BY director_lastname ASC;

DELETE FROM fav_movies WHERE director_lastname BETWEEN 'r%' AND 'z%';

SELECT * FROM fav_movies LIMIT 3;

-- very hard
CREATE TABLE fav_cars2 (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
make VARCHAR(20),
model VARCHAR(20),
year INT
);

ALTER TABLE fav_cars2
ADD COLUMN color VARCHAR(100),
ADD COLUMN price INT NOT NULL;

INSERT INTO fav_cars2 (color,price) VALUES ('pink','42000'),
('red','36000'),
('black','33000'),
('white','66000'),
('blue','25000'),
('purple','46000'),
('yellow','31000');

SELECT * FROM fav_cars2;

UPDATE fav_cars2
SET color = 'yellow', price = '22000'
WHERE id = 7;

ALTER TABLE cars ADD COLUMN car_name VARCHAR(50);

UPDATE cars SET car_name = CONCAT(make, ' ', model);
ALTER TABLE fav_cars2 ADD COLUMN result INT;

select * FROM fav_cars2;
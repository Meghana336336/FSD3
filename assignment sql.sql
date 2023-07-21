CREATE TABLE directors (director_id INT PRIMARY KEY, director_name VARCHAR(20) );
CREATE TABLE genres(genre_id INT PRIMARY KEY,genre_name VARCHAR(20));
CREATE TABLE movies (
movie_id INT PRIMARY KEY, title VARCHAR(20) UNIQUE,release_year VARCHAR(4),director_id INT NOT NULL,
FOREIGN KEY (director_id) REFERENCES directors(director_id));
CREATE TABLE movie_genres(movie_id INT NOT NULL,genre_id INT NOT NULL,
FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
FOREIGN KEY (genre_id) REFERENCES genres(genre_id));
 

 INSERT INTO genres VALUES 
 (1001,'Fantasy'),(1002,'Comedy'),(1003,'Family'),(1004,'Superhero'),(1005,'Drama'),(1006,'MCU');
   
 INSERT INTO directors VALUES 
 (1000, 'Rick Riordan'),(1001,'Sreenu Vaitla '),(1002,'Karan Johar'),(1003,'Sukumar'),
(1004,'Rajkumar Hirani'),(1005,'Kevin Feige'),(1006,'Rajmouli'),(1007,'Jon Favreau');
  
 INSERT INTO movies VALUES
( 1, 'Percy Jackson', '2013', 1000),(2, 'Dookudu', '2011' , 1001),(3, 'K3G', '2001', 1002), 
(4, 'Pushpa', '2022', 1003), (5, '3 Idiots', '2009', 1004),(6, 'She Hulk','2023',1005),
(7, 'Bahubali','2015',1006),(8,'Iron Man-2','2009',1007),(9,'Iron Man-1','2008',1007);
   
 INSERT INTO movie_genres VALUES 
 (1,1002),(2,1001),(3,1003),(4,1004),(5,1006),(6,1005),(7,1003),(8,1005),(9,'1001');

    SELECT m.title,d.director_name FROM movies m INNER JOIN directors d
    ON m.director_id = d.director_id;
    
    SELECT m.title,m.release_year,d.director_name FROM movies m
    INNER JOIN directors d ON m.director_id = d.director_id;

    SELECT d.director_name, m.title FROM directors d 
    LEFT JOIN movies m ON d.director_id = m.director_id ;

    SELECT m.title, m.release_year, d.director_name FROM movies m 
    RIGHT JOIN directors d ON d.director_id = m.director_id;

    SELECT m.title, g.genre_name FROM movies m
    RIGHT JOIN genres g ON g.genre_id = m.director_id;
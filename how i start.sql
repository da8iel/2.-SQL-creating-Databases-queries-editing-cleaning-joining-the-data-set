CREATE DATABASE lc;
USE lc;
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL, 
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);
INSERT INTO bands (name)
VALUES ('iron maiden');

INSERT INTO bands (name)
VALUES ('deuce'), ('avenged sevenfold'), ('ankor');

SELECT * FROM bands; 

SELECT * FROM bands LIMIT 2;
SELECT name FROM bands;
SELECT id AS 'ID', name AS 'Bands Name'
FROM bands;
SELECT * FROM bands ORDER BY NAME;
SELECT * FROM bands ORDER BY NAME DESC;
INSERT INTO albums (name, release_year, band_id)
VALUES ('THE NUMBER OF THE BEAST', 1985, 1),
('power slave', 1984, 1),
('nightmare', 2018, 2),
('nightmare', 2010, 3),
('test album', NULL, 3);
select * from albums;

select distinct name from albums; 

UPDATE albums 
SET release_year = 1982
where id = 1; 

select * from albums
where release_year < 2000;

select * from albums
where name like '%er%' or band_id = 2;
select * from albums
where release_year = 1984 and band_id =1;

select * from albums
where release_year between 2000 and 2018;

select * from albums; 
select * from albums;
select * from bands
JOIN albums ON bands.id = albums.band_id;
select * from bands
inner join albums on bands.id = albums.band_id;

select * from bands
left join albums on bands.id = albums_id;
select avg(release_year) from albums;
select SUM(release_year) from albums;
select band_id, count(band_id) from albums
group by band_id;

SELE

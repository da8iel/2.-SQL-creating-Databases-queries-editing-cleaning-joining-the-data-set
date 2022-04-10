CREATE TABLE daniel_company (
id INT PRIMARY KEY,
first_name VARCHAR(40),
salary INT,
birth_date DATE,
super_id INT,
FOREIGN KEY (super_id) REFERENCES daniel_company(id) ON DELETE SET NULL
);

CREATE TABLE client(
id INT PRIMARY KEY,
client_name VARCHAR(40),
FOREIGN KEY (id) REFERENCES daniel_company(id) ON DELETE CASCADE
);

ALTER TABLE daniel_company RENAME COLUMN first_name TO full_name;
ALTER TABLE daniel_company RENAME COLUMN salary TO salary_dollar;
INSERT INTO daniel_company VALUES (1, 'Daniel Panjaitan', 50000, '1994-04-01', NULL);
INSERT INTO daniel_company VALUES (2, 'Meylani Nidhi', 40000, '1993-02-05', 1);
INSERT INTO daniel_company VALUES (3, 'Rickardo Sasi', 40000, '1993-02-05', 1);
INSERT INTO daniel_company VALUES (4, 'Mamed', 30000, '1994-07-05', 2);
INSERT INTO daniel_company VALUES (5, 'Rani', 30000, '1996-07-05', 2);
INSERT INTO daniel_company VALUES (6, 'Rian', 30000, '1998-04-05', 2);
INSERT INTO daniel_company VALUES (7, 'Roman', 30000, '1992-06-06', 2);
INSERT INTO daniel_company VALUES (8, 'Sasa', 30000, '1994-06-06', 3);
INSERT INTO daniel_company VALUES (9, 'Ruri', 30000, '1993-09-06', 3);
INSERT INTO daniel_company VALUES (10, 'Sakti', 30000, '1991-07-06', 3);
INSERT INTO daniel_company VALUES (11, 'Budi', 30000, '1992-06-01', 3);

SELECT * FROM daniel_company;
SELECT * FROM client;
ALTER TABLE client RENAME COLUMN id TO emp_id;
INSERT INTO client VALUES (3, 'Bunga Mekar');
INSERT INTO client VALUES (4, 'Senja Pagi');
INSERT INTO client VALUES (6, 'Makmur Jaya');
INSERT INTO client VALUES (8, 'Sehat Sejahtera');
INSERT INTO client VALUES (10, 'Jaya Selalu');
INSERT INTO client VALUES (11, 'Abadi Selamanya');




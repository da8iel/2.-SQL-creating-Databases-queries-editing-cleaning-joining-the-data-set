CREATE TABLE student_uj(
sd_id INT PRIMARY KEY NOT NULL,
fULL_name VARCHAR (40),
major VARCHAR (40)
);

alter table student_uj add column birth_date date;

CREATE TABLE study_group(
course_id INT PRIMARY KEY NOT NULL,
course_name VARCHAR (40)
);

CREATE TABLE tutor(
sd_id INT NOT NULL,
course_id INT NOT NULL,
tutor_id INT,
PRIMARY KEY (sd_id, course_id),
FOREIGN KEY (sd_id) REFERENCES student_uj(sd_id) ON DELETE CASCADE,
FOREIGN KEY (course_id) REFERENCES study_group(course_id) ON DELETE CASCADE
);
select * from tutor;
alter table tutor add column tutor_id INT;
alter table tutor add FOREIGN KEY (tutor_id) REFERENCES student_uj(sd_id) ON DELETE cascade;
alter table tutor rename column tutor_id to tutor_by_id;

insert into student_uj values (1, 'Malika Ramadani', 'Biologi', '1998-02-01');
insert into student_uj values (2, 'Andi Rahmat', 'Manajement', '1998-03-06');
insert into student_uj values (3, 'Suti Sutejo', 'Physic', '1998-06-15');
insert into student_uj values (4, 'Ariel Nidzji', 'Medicine', '1997-03-01');
insert into student_uj values (5, 'Maria Ningrum', 'Economy', '1998-02-10');
insert into student_uj values (6, 'Ranti sutardzo', 'Biology', '1998-12-21');
insert into student_uj values (7, 'Simon Petrus', 'Economy', '1998-08-11');
insert into student_uj values (8, 'Jessica Iskandar', 'Physic', '1998-11-11');
insert into student_uj values (9, 'Suti Sutejo', 'Physic', '1998-04-01');
insert into student_uj values (10, 'Ahmad Suparjo', 'Mathematics', '1998-04-01');

Select * From student_uj;

insert into study_group values (1, 'Biology');
insert into study_group values (2, 'Management');
insert into study_group values (4, 'Physic');
insert into study_group values (5, 'Medicine');
insert into study_group values (6, 'Economy');
insert into study_group values (7, 'Mathematics');

insert into tutor values (1, 6, 5);
insert into tutor values (2, 6, 5);
insert into tutor values (3, 6, 5);
insert into tutor values (4, 6, 5);
insert into tutor values (6, 6, 5);
insert into tutor values (7, 7, 10);
insert into tutor values (8, 7, 10);
insert into tutor values (9, 7, 10);




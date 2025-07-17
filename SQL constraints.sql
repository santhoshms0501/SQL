create database constraints;
use constraints;


create table practice_1(
roll_no int unique,
name varchar(50),
subject varchar(50),
marks int
);

create table practice_2(
s_id int primary key,
Name varchar(50),
dept varchar(50)
);

create table practice_3(
name varchar(50) not null,
e_mail varchar(50)
);

insert into practice_1 values
(701,"Akash","Tamil",85);

select * from practice_1

DELETE from practice_1
where roll_no = 701;

select * from practice_1;

INSERT INTO your_table (roll_no, name, subject, marks) VALUES
  (1, 'Arun Kumar',      'Mathematics',       88),
  (2, 'Bharathi Devi',    'Tamil',             92),
  (3, 'Chitra Lakshmi',   'Science',           85),
  (4, 'Dinesh Reddy',     'English',           78),
  (5, 'Ezhil Mary',       'Social Studies',    81),
  (6, 'Feroz Khan',       'Mathematics',       74),
  (7, 'Gayathri Priya',   'Science',           89),
  (8, 'Harini Shankar',   'English',           94),
  (9, 'Ishwarya Raj',     'Tamil',             76),
  (10, 'Jeeva Kumar',     'Social Studies',    83);
  
alter table Practice_1 modify column roll_no int primary key;
alter table Practice_1 modify column name varchar(50) unique not null;
alter table Practice_1 modify column subject varchar(50) not null;
alter table Practice_1 modify column mark int check(marks between 0 and 100);


INSERT INTO your_table (roll_no, name, subject, marks) VALUES
  (1, 'Arun Kumar',      'Mathematics',       88),
  (2, 'Bharathi Devi',    'Tamil',             92),
  (3, 'Chitra Lakshmi',   'Science',           85),
  (4, 'Dinesh Reddy',     'English',           78),
  (5, 'Ezhil Mary',       'Social Studies',    81),
  (6, 'Feroz Khan',       'Mathematics',       74),
  (7, 'Gayathri Priya',   'Science',           89),
  (8, 'Harini Shankar',   'English',           94),
  (9, 'Ishwarya Raj',     'Tamil',             76),
  (10, 'Jeeva Kumar',     'Social Studies',    83);
  
  select 
  
CREATE DATABASE limit_demo;
USE limit_demo;

CREATE TABLE student(
rollNo INT,
name VARCHAR(50),
marks INT,
city VARCHAR(50)
);


INSERT INTO student VALUES
(1,'Anbu',85,'Chennai'),
(2,'Abhinaya',72,'Thirunelveli'),
(3,'Ravi',56,'Madurai'),
(4,'Shanthi',92,'Trichi'),
(5,'Dheekshaya',95,'Vellore'),
(6,'Deeraj',65,'Trichi'),
(7,'Aravind',82,'Madurai'),
(8,'Jacob zackaria',82,'Madurai'),
(9,'Pramoth',74,'Trichi'),
(10,'Sam',63,'Thrinulveli'),
(11,'Akshya',75,'Trichi'),
(12,'Anuja',52,'Chennai'),
(13,'Aishwariya',92,'Chennai'),
(14,'Neeraj',76,'Vellore'),
(15,'Naveen',64,'Trichi'),
(16,'An',85,'Chennai');

select * from student order by rollNo limit 5;

select city from student order by marks desc limit 3;

select * from student order by marks desc limit 3 offset 6;

select name, city from student order by marks desc limit 5,2;

select * from student where name like "A%";

select name,marks,city from student 
where name like "A%A";

select * from student 
where marks > 70 and marks < 85 
order by name ;

select name,marks,city from student 
where not name like "An" and 
marks between 75 and 95
order by marks desc;

select name as student_name from student;

select * from student;
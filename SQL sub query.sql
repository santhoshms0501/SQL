CREATE DATABASE sub_query;
USE sub_query;

CREATE TABLE student(
rollNo INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
marks INT,
city VARCHAR(50)
);

INSERT INTO student
VALUES
(101,'Abhishek',78,'Trichi'),
(102,'Ram',93,'Madurai'),
(103,'Muthu',85,'Madurai'),
(104,'Rajeshwari',96,'Chennai'),
(105,'Nirmal',92,'Chennai'),
(106,'Shiny',82,'Chennai'),
(107,'Tamil',98,'Madurai'),
(108,'Muthulakshmi',96,'Trinulveli');

select name,max(marks) from student
 group by name having max(marks) < (select max(marks) from student);

select avg(marks) from student 
where marks > (select avg(marks) from student);

select name,marks from student 
where marks = (select max(marks) from student);

select * from student
where marks > (select avg(marks) from student);

select * from student 
where rollNo = 101 and (select count(city) from student);

select * from student where marks < (select marks from student where name = "Tamil");

select * from student where marks = (select min(marks) from student where city = "Chennai");

select name, marks, (select avg(marks) from student) as Avg_marks from student;

select * from student where marks = (select marks from student where name = "Rajeshwari");

select * from student where city <>(select city from student where name = "Nirmal");
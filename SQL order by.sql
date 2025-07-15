CREATE DATABASE order_by;
USE order_by;

CREATE TABLE  employee(
eid INT,
eName VARCHAR(50),
job_desc VARCHAR(50),
salary int
);

INSERT INTO employee
VALUES
(1,'Joseph','Developer',20000),
(2,'Revathy','HR',30000),
(3,'Nisha','Developer',25000),
(4,'Pramoth','HR',40000),
(5,'Malik','Tester',10000),
(6,'Suresh','Tester',15000),
(7,'Shanthi','Admin',8000),
(8,'Sundar','Admin',10000),
(9,'Pramela','Manager',50000),
(10,'Kesavan','CEO',100000),
(11,'Kedharnath','Manager',60000),
(12,'Ameer','Developer',30000),
(13,'Ashok','Tester',12000),
(14,'Sam','Analyst',15000),
(15,'Joshibha','Analyst',45000),
(16,'Hari','Analyst',35000)

select * from employee order by salary desc;

select * from employee where job_desc="Developer" order by salary desc;

select * from employee 
where not eName="Kesavan" 
order by salary desc;

select * from employee order by eid desc limit 5;

select * from employee order by eid limit 5 offset 3;

select * from employee 
where eName like "A%";

select * from employee
where eName like "A%A" limit 5;
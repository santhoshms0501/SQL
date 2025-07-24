CREATE DATABASE joins;
USE joins;

CREATE TABLE customers(
cust_id INT PRIMARY KEY,
cust_name VARCHAR(50) NOT NULL,
city VARCHAR(50)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
order_detail VARCHAR(50),
order_amount DECIMAL(6,3),
cust_id INT,
FOREIGN KEY(cust_id) REFERENCES customers(cust_id)
);


INSERT INTO customers
VALUES
(101 , 'Gomathi','T Nagar'),
(102,'Kathir','Velachery'),
(103 , 'Guna','Thiruvanmayur'),
(104,'Anees','Velachery'),
(105 , 'Babu','Adayar'),
(106,'Jawahar','Taramani'),
(107,'Deekshaya','Guindy');

INSERT INTO orders
VALUES
(6001,'Briyani',150.0,101),
(6002,'Idly',75.0,103),
(6003,'Fried Rice',120.0,102),
(6004,'Dhal Chawal',100.0,106),
(6005,'Parotta',100.0,101);

select * from customers;
select * from orders;


select c.cust_name,
	   o.order_id
from customers as c 
left join orders as o
on c.cust_id = o.cust_id;
union
select c.cust_name,
	   o.order_id
from customers as c 
right join orders as o
on c.cust_id = o.cust_id;

select * 
from customers
cross join orders;

select o.order_id, o.order_amount,
       c.cust_name, c.city
from orders as o 
left join customers as c
on o.cust_id = c.cust_id;

select o.order_id, o.order_amount,
       c.cust_name, c.city
from orders as o 
right join customers as c
on o.cust_id = c.cust_id;

select o.order_id, o.order_amount,
       c.cust_name, c.city
from orders as o 
full join customers as c
on o.cust_id = c.cust_id;

select c.cust_name, sum(o.order_amount)
from customers as c
inner join orders as o
on c.cust_id = o.cust_id
group by c.cust_name
order by sum(o.order_amount) desc;
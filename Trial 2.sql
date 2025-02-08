-- create database hello_world;
-- use hello_world;
-- drop database hard_face 
-- use hello_world
-- create table Workers(Id_Number int,
-- First_Name varchar(30),
-- Last_name varchar(30),
-- Date_of_Birth int, 
-- Place_of_Origin varchar(30),
-- Place_Currently_Staying varchar(30),
-- House_Address varchar(30),
-- Hire_Date date,
-- Living_Conditions varchar(100));
-- select *
-- from Workers 
-- rename table Workers to employees;
-- alter table employees
-- add Phone_Number varchar(15)
-- alter table employees 
-- rename column Phone_Number to Work_Address;
-- alter table employees
-- modify column Work_Address varchar(100)
-- alter table employees 
-- modify  Work_Address varchar(100)
-- after Last_Name;
-- alter table employees 
-- drop column Place_of_Origin;
-- select *
-- from employees



insert into test
values(current_date+ 1,null, null);
select* from test
drop table test;
create table products(
product_id int, 
product_name varchar(30) unique,
price decimal(4,2)
);
select *
from products 
insert into products 
values (100,"Hamburger", 3.99),
(101,"Fries", 1.89),
(102,"Ice Cream",1.00),
(103,"soda",1.40);
alter table products 
modify price decimal(4, 2)not null;
insert into products
values(104,"Meat pie",5.55);
select *
from employees
create table workers(
employee_id int,
first_name varchar(50),
last_name varchar(50),
hourly_pay decimal(3,2),
hire_date date );
select *
from workers;
use hello_world ;
Insert into workers
values (1,"Las","Micheal",9.9,'2016-04-06'),
(2,"Tope","Emmanuel",8.0,'2015-06-21'),
(3,"Alade","Evans",9.80,'2017-03-09'),
(4,"Ekor", "Cephas",7.90,'2018-04-19'),
(5,"Amakye","Linda",8.8,'2020-07-16');
select *
from workers
delete from workers
where employee_id = 1
order by asc employee_id 

create table transactions(
transaction_id int primary key,
amount decimal(5,2));

insert into transactions 
values(1004,5.65);

select transaction_id 
from transactions 
where transaction_id= 1001
drop table transactions 

-- auto increament attributes 
create table transactions(
transaction_id int primary key auto_increment,
amount decimal (5,2)); 

insert into transactions(amount) 
values (7.56);
select * 
from transactions ;

alter table transactions 
auto_increment = 100;

-- foreign key constraints  
create table customers(
customer_id int primary key auto_increment,
first_name varchar(30),
last_name varchar(30));
select *
from customers ;

insert into customers (first_name,last_name)
values("Kwame","Boateng");
select *
from customers ;


create table transactions(
transaction_id int primary key auto_increment,
amount decimal(4,2),
customer_id int,
foreign key(customer_id) references customers(customer_id ));
select *
from transactions ;
alter table transactions
auto_increment = 1000;

create table transactions(
transaction_id int primary key auto_increment,
amount decimal(4,2),
customer_id int)
select *
from transactions;
insert into transactions (amount , customer_id)
values(8.70,264);
select amount, customer_id, first_name, last_name
from transactions
inner join customers 
on transactions.customer_id = customers.customer_id;


select sum(amount) as goals 
from transactions

select concat(name,' ', age ) as average 
from hero

select *
from customers
alter table customers 
add column full_name varchar(30) after last_name

update customers
set full_name = "Kwame Boateng"
where customer_id = 5;
select *
from customers
where full_name like "%p%";

select * 
from customers
-- order by last_name desc;
order by customer_id asc;

select * 
from transactions
order by amount,transaction_id

select * 
from customers 
limit 2

create table income(
location varchar(50),
amount decimal(5,2));

insert into income 
values ('GRidCo', 700);
select*
from income ;

create table expenses(
items varchar(50),
amount decimal (4,2));

insert into expenses 
values ("yam",66);
select*
from expenses 
inner join income 
union 
select * 
from income;


select *
from income as a
inner join expenses as b

alter table hero
add DoB int 

update hero
set DoB = 19
where id = 4;
select *
from hero as a
inner join hero as b;

create view employee_attendance as 
select last_name, firstname

  from customers;
  alter table customers 
  add column email varchar(50);
  select *
  from customers
  update customers 
  set email = "kayboateng@gmail.com"
 where customer_id = 5;
 insert into customers 
 values(6,"Pearl","kapss","Kapps Pearl","kpearl@gmail.com");
 select*
 from customers;
 
 show indexes from customers;
 create index last_name_idx
 on customers(last_name) ;
 
 
 select *
 from hero;
 select name,school_attended,age,
 avg (DoB) as average_pay
from hero;

select *
from Transactions
where customer_id is not null

select*
from transactions ;
alter table transactions 
add column date_of_birth date;
update transactions 
set date_of_birth = "2002-11-30"
where transaction_id= 4;
select * from transactions;
select *
from expenses 
insert into transactions 
values(6,3.67,515,"2003-09-18");
select * from transactions;
select sum(amount)
from transactions
group by date_of_birth;
delimeter $$
create procedure get_hero()
begin
select *
from hero
end $$
call get_hero

alter table employees 
add column monthly_pay decimal(5,2) after hire_date;
select *
from employees;

update employees
set salary= monthly_pay*2080
where id_number = 1;

create trigger before_hourly_pay_update
before update on employees
for each row

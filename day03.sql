create database day03;
use day03;
create table customers(
	id int primary key not null,
	name varchar(50),
	address varchar(100),
	DOB date,
	gender varchar(10),
	last_name varchar(30)
);
insert into customers values(1,'Harshal','washim','2003-08-13','male','wankhede');
insert into customers values(2,'Yash','pune','2003-08-12','male','chavan');
insert into customers values(3,'Rohan','bheed','2003-04-23','male','unde');
insert into customers values(4,'Saurabh','vasti','2003-08-03','male','randve');
insert into customers values(5,'Anant','pune','2004-12-17','male','yadav');
insert into customers values(6,'Shilpa','mumbai','2003-04-13','male','manmote');
insert into customers values(7,'Omkar','dubai','2003-08-14','male','pokle');

select * from customers;
select 
	*
from customers
where name='Harshal' or id>4;
select 
	*
from customers
where year(DOB)=2003 or id<1;

select 
	*
from customers
where name='Harshal' and id>1;
select 
	*
from customers
where year(DOB)=2003 and id>1;

select 
	*
from customers
where year(DOB) != 2003 or id>1;
select 
	*
from customers
where length(name) != 4;

select 
	*
from customers
where id between 1 and 5;
select 
	*
from customers
where DOB between '2003-01-13' and '2003-06-12';

select 
	*
from customers
where name like '%a%_l';
select 
	*
from customers
where name like '%l';
select 
	*
from customers
where name like '_a';
select 
	*
from customers
where name like '__r';
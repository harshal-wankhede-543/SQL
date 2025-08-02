create database demo;
use demo;
create table emp(
id int primary key not null,
name varchar(50),
email varchar(50),
password varchar(50)
);
create table employees(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table staff(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table members(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table management(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table mentors(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table company(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table institute(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table teachers(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table workers(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
create table helpers(
id int primary key not null,
name char(20),
Gender char(10),
address varchar(50)
);
select * from emp;
insert into employees values(1,"Harshal","male",'Pune');
insert into employees values(2,"Hars","male",'Akola');
insert into emp values(3,"Harshal","chiweas@gmail.com",'Thane');
insert into emp values(4,"Hal","chiweas@gmail.com",'Mumbai');
select * from employees;
insert into staff values(1,"Hal","male",'1222430');
insert into staff values(2,"Harshal","male",'Pune');
insert into staff values(3,"Harshal","male",'Pune');
insert into management values(3,"Harshal","male",'Pune');
insert into management values(4,"Harshal","male",'Pune');
insert into management values(5,"Harshal","male",'Pune');
insert into management values(6,"Harshal","male",'Pune');
insert into mentors values(1,"Harshal","male",'Pune');
insert into mentors values(2,"Harshal","male",'Pune');
insert into mentors values(3,"Harshal","male",'Pune');
insert into company values(1,"Harshal","male",'Pune');
insert into company values(2,"Harshal","male",'Pune');
insert into teachers values(1,"Harshal","male",'Pune');
insert into teachers values(2,"Harshal","male",'Pune');
insert into teachers values(3,"Harshal","male",'Pune');
insert into workers values(1,"Harshal","male",'Pune');
insert into workers values(2,"Harshal","male",'Pune');
insert into workers values(3,"Harshal","male",'Pune');
insert into helpers values(1,"Harshal","male",'Pune');
insert into helpers values(2,"Harshal","male",'Pune');
insert into workers values(1,"Harshal","male",'Pune');
insert into workers values(2,"Harshal","male",'Pune');
insert into workers values(3,"Harshal","male",'Pune');
select * from employees;
select * from staff;
select * from management;
select * from mentors;
select * from company;
select * from teachers;
select * from workers;
select * from helpers;

-- this is a comment
/* This is 
multiline comment
*/



-- DQL 
select * from Students;

select * from teachers;
select * 
from Students 
order by marks desc;

select * from teachers;
select *  
from Students 
order by
address asc,
marks desc;

select 
gender,
sum(marks) AS Total_Score
from Students 
Group by gender; 

select 
gender,
sum(marks) AS Total_Score
from Students 
Group by gender
having sum(marks)>500;


select 
address,
AVG(marks) as avg_score
from Students
where marks !=0
group by address
having avg(marks)>90;

select TOP
from Students
order by marks desc;

select distinct top 2 
from Students
order by marks asc;

select 123 as static_number;

select "harshal" as Static_string;

select 
	marks,
    address,
    'Student_type' as Student_details
from Students;




-- DDL
create table emp(
id int primary key not null,
name varchar(50),
email varchar(50),
password varchar(50)
);
create table persons(
	id int not null,
    person_name varchar(50),
    BIRTH_date date,
    phone varchar(15),
    constraint pk_person primary key(id)
);
alter table persons
add email varchar(50) not null;
select * from persons;

drop table persons;
select * from persons;


-- DML

create table emp(
id int primary key not null,
name varchar(50),
email varchar(50),
password varchar(50)
);
create table persons(
	id int not null,
    person_name varchar(50),
    BIRTH_date date,
    phone varchar(15),
    constraint pk_person primary key(id)
);
insert into persons(id,person_name)
 select 
	id,
    name as person_name
from emp;
select * from persons;

update persons
set 
	person_name='harshal',
    phone = 9809343
where id=3;    
select * from persons;

delete from emp
where id=3;
select* from emp;

truncate table emp ;

 select * from Students
 where marks >= 90 and name='harshal';
 
 select * from Students 
Where NOT marks<=90 and name='harshal';

select * from Students
Where marks between 98 and 99;
-- or   (Both the method are same)
select * from Students
Where marks>=98 and marks <=99;  

select * from Students
Where gender in ('male','female');
select * from Students
Where gender not in ('male','female');
-- or
select * from Students
Where gender='male' OR gender ='female';
 
 
 select * from Students
 Where name like 'h%';
 select * from Students
 where gender like 'fe____';
 select * from Students
 where name like '%r%';
 select * from Students
 inner join  emp
 on Roll_no = id
 where 
 id is null or 
 Roll_no is null
;
select * from Students
full join employee
on Roll_no = id
where
	Roll_no != null and
    id !=null; 
  

 
select * from Students
cross join employee;
select name from employee union
select name from Students;  

select name from day02.students
except
select name from employee;

-- Functions
select 
	name, gender,
    concat(name,gender)as concatt
from Students;
  
select 
	name, gender,
    upper(name)as concatt
from Students  ;

select 
	name,
	length(name)
from students 
where name != trim(name);

select 
'123-456-789' as phone,
replace('123-456-789','-',' ') as clean_phone;


select 3.516,
Round(3.516,2) AS round_2,
Round(3.516,1) as round_1,
Round(3.516,0) as round_0,
abs(-100) as abs,
getdate() today;
 
 


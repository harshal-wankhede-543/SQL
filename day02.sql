create database day02;
use day02;
create table employee1(
id int primary key not null,
name char(50),
address varchar(100),
gander char(30)
);
insert into employee values(1,'harshal','pune','male');
insert into employee values(2,'mukesh','nashik','male');
insert into employee values(3,'ettha','thane','male');
insert into employee values(4,'gamma ','mumbai','male');
insert into employee values(5,'lala','akola','male');
insert into employee values(6,'bala','dubai','female');
insert into employee values(7,'kala','pune','female');
select * from employee;
select * from employee where gander='male';

update employee set gander = 'female' where id=5;
update employee set address ='bibewai' where id = 6;

delete from employee where gander='female' AND id>0;
select * from employee;

alter table employee ADD Column age int;

create table employee2 AS select * from employee;
select * from employee2;

create table Students(Roll_no int Primary Key not null , name varchar(100), address varchar(50),gender char(10),class char(10),marks int(100));
insert into Students values(1,'harshal','pune','male','BE',98);
insert into Students values(2,'harsh','nagpur','male','BE',56);
insert into Students values(3,'pankaj','thane','male','BE',90);
insert into Students values(4,'yash','mumbai','male','SE',88);
insert into Students values(5,'rohan','akola','male','BE',98);
insert into Students values(6,'unda','bheed','male','TE',97);
insert into Students values(7,'sakshi','satara','female','BE',96);
insert into Students values(8,'sankya','sangli','male','BE',93);
insert into Students values(9,'chetan','sambhajinagar','male','BE',98);
insert into Students values(10,'hemant','baner','male','SE',97);
insert into Students values(11,'priyanka','panvel','female','tE',99);

select Roll_no from Students;
select name from Students;
select address from Students;
select gender from Students;
select class from Students;
select marks from Students;

select * from Students where gender = 'male';
select * from Students where marks>90;
select * from Students where address = 'pune';
select * from Students where class = 'BE';
select * from Students where Roll_no = '11';

update Students set address = 'jalna' Where name='priyanka'AND Roll_no=11;
update Students set address = 'jalna' Where name='hemant'AND Roll_no=10;
update Students set address = 'satara' Where name='yash'AND Roll_no=4;
update Students set address = 'london' Where name='rohan'AND Roll_no=5;
update Students set address = 'bibewadi' Where name='harshal'AND Roll_no=1;

delete from Students where name='hemant'AND Roll_no=10;
delete from Students where name='priyanka'AND Roll_no=11;
delete from Students where name='harsh'AND Roll_no=2;
select * from Students;


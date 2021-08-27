create database handout2;
create table persons(
id int primary key not null, 
age int not null,
lastname varchar(50) not null,
firstname varchar(50) not null,
city varchar(50)
);

insert into persons(id,age,lastname,firstname) values(1,26,'sharma','manika');
insert into persons(id,age,lastname,firstname) values(2,27,'gupta','ishita');
insert into persons(id,age,lastname,firstname) values(3,28,'kushwaha','kanika');
insert into persons(id,age,lastname,firstname) values(4,29,'goswami','alisha');

create table dept(
id int primary key,
dept_name varchar(100) unique
);

insert into dept(id,dept_name) values(1,'mca');
insert into dept(id,dept_name) values(2,'mba');

select * from dept;

Alter table persons add constraint check(age>25);
Alter table persons modify firstname varchar(50) not null;
alter table persons alter city set default 'kurukshetra';

select * from persons;
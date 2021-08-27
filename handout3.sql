create database handout3;

-- Question 1
create table persons(
id int primary key not null, 
age int not null,
lastname varchar(50) not null,
firstname varchar(50) not null,
city varchar(50)
);

insert into persons(id,age,lastname,firstname,city) values(1,26,'sharma','manika','delhi');
insert into persons(id,age,lastname,firstname,city) values(2,24,'gupta','ishita','jaipur');
insert into persons(id,age,lastname,firstname,city) values(3,28,'kushwaha','kanika','kurukshetra');
insert into persons(id,age,lastname,firstname,city) values(4,21,'goswami','alisha','mumbai');

create table orders(
O_id int primary key not null, 
Order_no int not null,
pid int,
foreign key (pid) references persons(id)
);

insert into orders(O_id,Order_no,pid) values(1,1,3);
insert into orders(O_id,Order_no,pid) values(2,2,4);
insert into orders(O_id,Order_no,pid) values(3,3,4);

select * from persons;
select * from orders;

-- Question 2
create table department(
Dept_id int primary key,
Dname varchar(100),
Location varchar(100)
);

insert into department(Dept_id,Dname,Location) values(1,'mca','kurukshetra');
insert into department(Dept_id,Dname,Location) values(2,'mba','kurukshetra');
insert into department(Dept_id,Dname,Location) values(3,'btech','kurukshetra');

create table Employee(
Emp_id int primary key,
Deptt_id int
);

insert into Employee(Emp_id,Deptt_id) values(1,2);
insert into Employee(Emp_id,Deptt_id) values(2,3);

select * from department;
select * from Employee;

alter table Employee add foreign key(Deptt_id) references department(Dept_id);



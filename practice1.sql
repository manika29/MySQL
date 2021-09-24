create database practice1;

-- Question 1
create table Employee(
Empno varchar(4) PRIMARY KEY,
Ename varchar(20) not null,
Age int not null,
designation varchar(50),
salary decimal(8,2) not null
);

desc Employee;
-- Question 2
Insert into Employee values(1,'Kanika',21,'Analyst',34000.0);
Insert into Employee values(2,'Ishita',21,'Engineer',50000.0);
Insert into Employee values(3,'Tarushi',21,'Analyst',70000.0);
Insert into Employee values(4,'Mansi',23,'Analyst',20000.0);

-- Question 3
select * from Employee;

-- Question 4
Alter table Employee modify Empno varchar(6);
select * from Employee;

-- Question 5
Update Employee SET designation="Manager" WHERE Empno=3;
select * from Employee;

-- Question 6
Alter table Employee ADD City Varchar(20);
select * from Employee;

-- Question 7
Select * from Employee where (Age<=26 && salary>=25000);

-- Question 8
select * from Employee where Ename LIKE 'Ka%';

-- Question 9
ALter table Employee drop column City;
select * from Employee;

-- Question 10
Drop table Employee;
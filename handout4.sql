create database handout4;

-- Question 1
Create Table Client(
    Client_no VARCHAR(6) PRIMARY KEY Check(Client_no LIKE 'C%') ,
    Firstname VARCHAR(20) NOT NULL,
    City VARCHAR(15),
    State VARCHAR(15),
    Pincode INT(6),
    Salary INT(6)
);

insert into Client values('C00001', 'Ivan', 'Bombay', 'Maharashtra',400054, 40000);
insert into Client values('C00002', 'Vandana', 'Madras' ,'Tamilnadu',780001, 36000);
insert into Client values('C00003', 'Pramada', 'Bombay', 'Maharashtra',400054, 30000);
insert into Client values('C00004', 'Basu', 'Bombay' ,'Maharashtra',40005, 55965);
insert into Client values('C00005', 'Ravi', 'Delhi' ,'',100001, 28563);
insert into Client values('C00006', 'Preeti', 'Karnal', 'Haryana', 132001,38000);

select * from Client;

-- Question 2
select distinct City from Client;

-- Question 3
update Client SET City='Kurukshetra', State='Haryana' where Firstname='Ravi';

-- Question 4
DELETE From Client where Client_no = 'C00004';

-- Question 5
Alter table Client modify column Firstname varchar(30);

-- Question 6
Alter table Client 
ADD Phone_no BIGINT(10) DEFAULT 9876543210;

-- Question 7
Alter table Client
drop column Phone_no;

-- Question 8
ALTER TABLE Client rename to Client_info;

-- Question 9
Select * from Client_info where City in ('Delhi','Bombay');

-- Question 10
Select Firstname from Client_info where Firstname LIKE '_c' AND State='Maharashtra';

-- Question 11
select * from Client_info where Salary between 30000 and 40000;

-- Question 12
select Firstname,City,State from Client_info where Not State='Maharashtra';
create database bank;

create table Customer (
cid int primary key,
name varchar(50),
phone int(10),
address varchar(50) );

create table branch(
bid int primary key,
name varchar(50),
address varchar(50)
);

create table Account (
account_no int primary key,
cid int,
bid int,
balance int(20),
type varchar(50),
foreign key(cid) references Customer(cid),
foreign key(bid) references branch(bid)
);

Insert into Customer values (1, 'Manika',1234567899,'Rohini');
Insert into Customer values (2, 'Ishita',1234567889,'Rohini');
Insert into Customer values (3, 'Kanika',323456879,'Gurugram');
Insert into Customer values (4, 'Prapti',1234567869,'Ghaziabad');
Insert into Customer values (5, 'Nidhi',1233578199,'Sahibabad');

select * from Customer;

Insert into branch values (1,'icici','rohini');
Insert into branch values (2,'pnb','vivek vihar');
Insert into branch values (3,'hdfc','sahibabad');

select * from branch;


Insert into Account values (1,1,1,25000,'saving');
Insert into Account values (2,2,3,55000,'current');
Insert into Account values (3,3,2,50000,'current');
Insert into Account values (4,4,2,15000,'saving');
Insert into Account values (5,5,1,35000,'saving');

select * from Account;

-- Question 1 - Write a query to display the name of customers living in rohini.
 select name from Customer where address='Rohini';

-- Question 2 - Display customer's name in sorted order(decreasing) of firstname.
select name from Customer ORDER BY name DESC;

-- Question 3 - Write a query to display the number of customer’s from Rohini.
select count(*) as cust_count from customer where address='rohini';

-- Question 4 - Write a query to display account number, customer’s firstname and balance.
SELECT a.account_no, c.name, a.balance FROM account a INNER JOIN customer c ON a.cid = c.cid;

-- Question 5 - Display customer's name in sorted order having savings account.
select c.name from Customer c inner join Account a ON c.cid=a.cid where a.type='saving' ORDER BY c.name;

-- Question 6 - Write a query to display city name and count of branches in that city.
select address,count(*) as branch_count from branch group by address;

-- Question 7 - Display Name and account number of all customers having account at rohini branch.
Select a.account_no, c.name from account a inner join customer c ON a.cid=c.cid where a.Bid = (select bid from branch where address = 'rohini');

-- Question 8 - Display name of all customers where seconfd letter is a.
select name from Customer where name like '_a%';

-- Question 9 - Display average balance of all customers in the bank;
select avg(balance) as average from Account;

-- Question 10 - select average balance of customers in each account type.
select type,avg(balance) as average from Account group by type;

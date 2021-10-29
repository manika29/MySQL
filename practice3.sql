create database practice3;

create table Client_master(client_no varchar(6),name varchar(20), address1 varchar(30),address2 varchar(30),city varchar(15),state varchar(15),pincode int(6), bal_due int(10));
insert into Client_master(client_no, name,city,pincode,state,bal_due) values(0001,"Ivan","Bombay",400054,"Maharashtra",15000);
insert into Client_master(client_no, name,city,pincode,state,bal_due) values(0002,"Vandana","Madras",400054,"TamilNadu",0);
insert into Client_master(client_no, name,city,pincode,state,bal_due) values(0003,"Pramada","Bombay",400054,"Maharashtra",5000);
insert into Client_master(client_no, name,city,pincode,state,bal_due) values(0004,"Basu","Bombay",400054,"Maharashtra",0);
insert into Client_master(client_no, name,city,pincode,bal_due) values(0005,"Ravi","Delhi",400054,2000);
insert into Client_master(client_no, name,city,pincode,state,bal_due) values(0006,"Rukmini","Bombay",400054,"Maharashtra",0);
select * from Client_master;

create table Product_master(Product_no varchar(20), Description varchar(20),Profit_percet decimal(10,2), Unit_measure varchar(20), Oty_on_hand int, Reorder_lvl int,Sell_price int, Cost_price int);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P00001","1.44Floppies",5,"piece",100,20,525,500);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P03453","Monitors",6,"piece",10,3,12000,11200);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P06734","Mouse",5,"piece",20,5,1050,500);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P07865","1.22Floppies",5,"piece",100,20,525,500);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P07868","Keyboards",2,"piece",10,3,3150,3050);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P07885","CD Drive",2.5,"piece",10,3,5250,5100);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P07965","540 HDD",4,"piece",10,3,8400,8000);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P07975","1.44 Drive",5,"piece",10,3,1050,1000);
insert into Product_master(Product_no,Description,Profit_percet,Unit_measure,Oty_on_hand,Reorder_lvl,Sell_price, Cost_price) value("P08865","1.22 Drive",5,"piece",2,3,1050,1000);
select * from Product_master;

-- Question 1 Find out the names of all the clients.
select name from Client_master;

-- Question 2 Retrieve the list of names and cities of all the clients.
select name,city from Client_master;

-- Question 3 List the various products available from the product_master table.
select Description from Product_master;

-- Question 4 List all the clients who are located in Bombay.
select name from Client_master where city='Bombay';

-- Question 5 Display the information for clients no 0001 and 0002.
select * from Client_master where client_no=0001 OR client_no=0002;

-- Question 6 Find the products with the description as ‘1.44 drive’ and ‘1.22 Drive’.
select * from Product_master where Description='1.44 Drive' OR Description='1.22 Drive';

-- Question 7 Find all the products whose sell price is greater than 5000.
Select Description from Product_master where Sell_price>500;

-- Question 8 Find the list of all clients who stay in the city ‘Bombay’ or city ‘Delhi’ or ‘Madras’.
Select name from Client_master where city IN('Bombay', 'Delhi','Madras');

-- Question 9 Find the product whose selling price is greater than 2000 and less than or equal to 5000
Select Description from Product_master where (Sell_price>2000 AND Sell_price<=5000);

-- Question 10 List the name, city, and state of clients not in the state of ‘Maharashtra’.alter
Select name,city,state from Client_master where city NOT IN('Maharashtra');

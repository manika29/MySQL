create database practice4;

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

-- 1. Change the selling price of 1.44 floppy drive to Rs.1150.00
update Product_master set Sell_price=1150 where Description='1.44Floppies';

-- 2. Delete the record with client 0001 from the client master table.
delete from Client_master where Client_no=0001;

-- 3. Change the city of client_no 0005 to Bombay.
update Client_master set city='Bombay' where Client_no=0005;

-- 4. Change the bal_due of client_no 0001, to 1000.
update Client_master set bal_due=1000 where Client_no=0001;

-- 5. Find the products whose selling price is more than 1500 and also find the new selling 
-- price as original selling price *15.
select Product_no, Sell_price*15 as Sell_price from Product_master where Sell_price>1500;

-- 6. Find out the clients who stay in a city whose second letter is a.
select name from Client_master where city LIKE '_a%';

-- 7. Find out the name of all clients having ‘a’ as the second letter in their names.
select name from Client_master where name LIKE '_a%';

-- 8. List the products in sorted order of their description.
select Description from Product_master order by Description;

-- 9. Count the total number of orders
select count(Oty_on_hand) from Product_master;

-- 10. Calculate the average price of all the products.
select avg(Cost_price) from Product_master;

-- 11. Calculate the minimum price of products.
select min(Cost_price) from Product_master;

-- 12. Determine the maximum and minimum prices. Rename the title as max_price and 
-- min_price, respectively.
select min(Cost_price) as min_price, max(Cost_price) as max_price from Product_master;

-- 13. Count the number of products having a price greater than or equal to 1500
select count(Cost_price) from Product_master where Cost_price>=1500;
create database practice2;

CREATE TABLE PRODUCT (  
ID INT NOT NULL,  
NAME VARCHAR (20) NOT NULL,  
Description varchar (100),  
Price INT NOT NULL,  
Color INT,
PRIMARY KEY (ID)  
);  
Desc PRODUCT;

INSERT INTO PRODUCT (ID,NAME,Description,Price,Color)  
VALUES (1, 'ABHIRAM', 'Inkjet 300 color Printer',120,80);  
INSERT INTO PRODUCT (ID,NAME,Description,Price,Color) 
VALUES (2, 'ALKA', '1220XI Inkjet Printer',200,130);  
INSERT INTO PRODUCT (ID,NAME,Description,Price,Color)  
VALUES (3, 'DISHA', 'Photo 890 Inkjet Printer',250,200);  
INSERT INTO PRODUCT (ID,NAME,Description,Price,Color)
VALUES (4, 'ESHA', 'Photo 890 Inkjet Printer',300,270);  


Select * from PRODUCT;

-- Question 1 -  Find the total price of the products
select sum(Price) from PRODUCT;

-- Question 2 -  Find the average price of the products
select avg(Price) from PRODUCT;

-- Question 3 -  Find the max price of the products
select max(Price) from PRODUCT;

select Description , avg(price) from PRODUCT GROUP BY Description;
select count(*) from PRODUCT;
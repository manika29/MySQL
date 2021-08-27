create table handout1.persons(
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

select * from persons;
select * from persons where age>25;
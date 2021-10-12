create database school;

-- Creating Tables
CREATE TABLE student 
   ( 
	sid INT PRIMARY KEY NOT NULL,
	sname VARCHAR(30), 
	sage INT
   ) ;
   
  CREATE TABLE teacher 
( 
 tid INT PRIMARY KEY NOT NULL, 
 tname VARCHAR(30) 
 );
  
  CREATE TABLE course 
   ( cid INT PRIMARY KEY NOT NULL, 
	 cname VARCHAR(30), 
     tid INT 
 );
  
CREATE TABLE student_marks
  ( 
   sid INT NOT NULL, 
   cid INT NOT NULL, 
   score INT 
 );
 
 
 -- Query 1 - adding foreign key in course and student_marks table
 Alter table course add constraint foreign key(tid) references teacher(tid);
 Alter table student_marks add constraint foreign key(sid) references student(sid);
 Alter table student_marks add constraint foreign key(cid) references course(cid);

 -- Inserting values
Insert into student values(1,'manika',21);
Insert into student values(2,'ishita',18);
Insert into student values(3,'kanika',26);
Insert into student values(4,'alisha',23);

Insert into teacher values(1,'kavita');
Insert into teacher values(2,'lalita');
Insert into teacher values(3,'anamika');

Insert into course values(1001,'c++',1);
Insert into course values(1002,'java',2);
Insert into course values(1003,'data structures',3);

Insert into student_marks values((select sid from student where sname="manika"),(select cid from course where cname="c++"),65);
Insert into student_marks values((select sid from student where sname="manika"),(select cid from course where cname="data structures"),95);
Insert into student_marks values((select sid from student where sname="ishita"),(select cid from course where cname="java"),75);
Insert into student_marks values((select sid from student where sname="ishita"),(select cid from course where cname="data structures"),90);
Insert into student_marks values((select sid from student where sname="kanika"),(select cid from course where cname="java"),55);
Insert into student_marks values((select sid from student where sname="alisha"),(select cid from course where cname="c++"),85);

-- Query 2 - the id and scores of all the students in the course of "1002"
select sid,score from student_marks where cid=1002;

-- Query 3 - the id and average score of students whose average score is more than 60
select sid, avg(score) from student_marks  group by sid having avg(score)>60;

-- Query 4 -  the number, name, number of courses selected and total scores of all students
select s.sid as id ,s.sname as name,count(sc.cid) as courses,sum(sc.score) as total from student s,student_marks sc where s.sid=sc.sid group by s.sid;

-- Query 5 - The number of teachers whose surname start with La;
select count(tname) as totalteachers from teacher where tname like 'la%';

-- Query 6 -the number of students having score between 60 and 70;
select count(cid) as studentscount from student_marks where score between 60 and 80;

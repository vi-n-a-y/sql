CREATE DATABASE temp1;
CREATE DATABASE IF NOT EXISTS temp1;
drop database world;
DROP DATABASE IF EXISTS company;
drop database temp1;
SHOW DATABASES;
SHOW TABLES;
CREATE DATABASE tmf; 
use tmf;
CREATE TABLE  student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL);

INSERT INTO student VALUE(1,"vinay",22);
INSERT INTO student VALUE(2,"john",23);

SELECT * FROM student;
INSERT INTO student(id,name,age)
VALUES
(3,"tiru",22),
(4,"hari",25),
(5,"venu",23);

INSERT INTO student (name,id,age) 
VALUES
("sanju" ,6,27);

use tmf;

CREATE TABLE employees(
id INT PRIMARY KEY,
name_emp VARCHAR(50),
salary FLOAT NOT NULL);

INSERT INTO employees VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);
SELECT * FROM employees;
DROP TABLE employee1;
use tmf;
DROP TABLE employees;
DROP TABLE student;
DROP DATABASE IF EXISTS tmf;
CREATE DATABASE IF NOT EXISTS tmf;
CREATE TABLE students;
CREATE TABLE students(
id INT PRIMARY KEY,
st_name varchar(50),
marks int NOT NULL
);
INSERT INTO students VALUES
(1,"vinay",55),
(2,"john",66),
(3,"sanju",89);
SELECT * FROM students;
CREATE TABLE employee1(
id INT ,
name VARCHAR(50),
salary INT,
PRIMARY KEY(id,name));
INSERT INTO students (id,st_name,marks) 
VALUES(4,"raju",99),(5,"rohit",51);
SELECT * FROM students;
CREATE TABLE employee(
em_id INT ,
em_name VARCHAR(50),
em_salary INT NOT NULL,
PRIMARY KEY(em_id,em_name)
);
CREATE TABLE practice(
p_id INT,
p_name VARCHAR(40),
p_salary INT DEFAULT 25000
);
INSERT INTO practice(p_id,p_name) VALUES
(1,"bhanu"),
(2,"sravya");
SELECT * FROM practice;
CREATE DATABASE collage;
USE collage;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO student values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Pune");
SELECT name,marks FROM student limit 3;
SELECT name,marks FROM student;
SELECT * FROM student where marks >85 limit 1;
SELECT * FROM student 
WHERE marks>80 AND city ="Mumbai";
SELECT * FROM student 
WHERE city not in ("Delhi","Mumbai") ;
select * from student where city !="Mumbai";
select marks from student where marks between 78 AND  96;
select * from student order by city;
select * from student where marks>70 order by city limit 3;
select  count(marks)
from student 
group by rollno;
select city, avg(marks) from student 
group by city;
select city , count(name)
from student 
group by city;
select grade,count(name) from student group by grade;
select city,avg(marks) from student group by city order by avg(marks);
use collage;
select * from student;
select city from student where city = "pune";
select city from student where city <>"pune";
select marks from student where marks <50;
select marks from student where marks <80 and marks>50;
select marks from student where marks <90 or marks <50;
select * from student where marks <90 and city="mumbai";
select city from student where city not in ("mumbai");
select * from student where city in("delhi");
select marks from student where marks between 80 and 100;
select * from student where city like("pune");
select city from student where city = all(select city from student where );
set sql_safe_updates=0;

update student 
set grade="O"
where grade ="o";
select * from student;
update student 
set marks=82
where rollno=105;
select * from student;
update student 
set city="pune"
where name="farah";
select * from student;
update student 
set city="Delhi"
where name="farah";
select * from student;
select * from student limit 3;
select * from student where marks>90 limit 3;
select * from student where grade = "o" limit 1;
select city from student group by city having city="delhi";
select city,grades from student group by city order by city desc;

select * from student 
order by city limit 4;
select city,count(name)
from student 
group by city;

select  city,count(city)
from student
group by city 
order by city;
select city ,avg(marks)
from student 
group by city
order by avg(marks);
select sum(marks) from student ;
select max(marks) from student;
select city,name,count(rollno)
from student 
group by city,name
having max(marks)>90;
update student 
set marks=marks+1;
select * from student;
alter table student 
change column name full_name varchar(10) ;
select * from student;
alter table student 
change full_name name varchar(30);
use collage;
alter table student 
rename to stu;
alter table stu 
change marks score int not null;
select * from stu;
use collage;
select * from student;
select * from stu;
drop table stu;








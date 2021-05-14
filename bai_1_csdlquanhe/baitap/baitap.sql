create database if not exists student_management;
use student_management;
create table class(
	id int not null,
    `name` varchar(30)
);
create table teachers (
id int not null,
`name` varchar(30),
age int,
country varchar(30)
);
INSERT INTO class(id,`name`)
       VALUES (124,'duc');
INSERT INTO teachers(id,`name`,age,country)
       VALUES (456,'duc',19,'vietnam');
create database student_management;
use student_management;
create table student(
	id int primary key,
    `name` varchar(50),
    date_of_birth date,
    email varchar(40)
);
insert into student(id,`name`,date_of_birth, email)
values 
(123,'tung ','2021-03-25','duc@gmail.com'),
(234,'Sang','2021-03-25','duc@gmail.com'),
(456,'duc','2021-03-25','duc@gmail.com');
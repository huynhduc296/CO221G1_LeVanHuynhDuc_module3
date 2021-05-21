
create database quan_ly_thuc_tap;
use quan_ly_thuc_tap;

create table project (
project_id int primary key auto_increment,
project_name varchar(40),
expense int,
place_of_interm varchar(40)
);
create table faculty(
faculty_id int primary key auto_increment,
faculty_name varchar(40),
phone varchar(40)
);
create table student(
student_id int primary key auto_increment,
student_name varchar(40),
faculty_id  int,
date_of_birth date,
place_of_birth varchar(40),
foreign key(faculty_id) references faculty(faculty_id)
 on delete cascade
);

create table instructor(
instructor_id int primary key auto_increment,
instructor_name varchar(40),
salary double,
faculty_id int,
foreign key(faculty_id)references faculty(faculty_id)
 on delete cascade
);

 create table instructor_studen(
    student_id int,
    project_id int,
    instructor_id int,
	gerder varchar(40),
    primary key (student_id,project_id,instructor_id),
    foreign key (student_id) references student(student_id),
    foreign key (project_id) references project(project_id),
    foreign key (instructor_id) references instructor(instructor_id)
    on delete cascade
    );

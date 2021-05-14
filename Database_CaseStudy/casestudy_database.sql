create database if not exists database_furama_resort;
use database_furama_resort;
create table positions(
	position_id int primary key,
    position_name varchar(40)
);


create table Employee_level(
id_Employee_level int primary key,
employee_level varchar(15)
);


create table Department(
department_id int primary key,
department_name varchar(50)
);
create table RentalType(
rental_type_id int primary key,
rental_type_name varchar(50),
price double
);


create table Servicetype(
service_type_id int auto_increment primary key,
service_type_name varchar(50)
);


create table Employees(
employee_id int auto_increment primary key,
full_name varchar(40) not null,
position_id int not null,
id_Employee_level int not null,
department_id int not null,
date_of_birth date,
id_card_number varchar(10) not null,
salary double,
phone_number varchar(10),
email varchar(100),
address varchar(200),
foreign key(position_id) references Positions(position_id),
foreign key(id_Employee_level)references Employee_level(id_Employee_level),
foreign key(department_id)references Department(department_id)
);


create table CustomerType(
customer_type_id int  primary key,
customer_type_name varchar(50)
);


create table Customers(
customer_id int auto_increment primary key,
    customer_type_id int,
    full_name varchar(50),
    date_of_birth date,
    id_card_number varchar(10),
    phone_number varchar(10),
    email varchar(100),
    address varchar(200),
    foreign key (customer_type_id) references CustomerType(customer_type_id)
 );


create table Services(
service_id int auto_increment primary key,
service_name varchar(50),
area_using double,
no_of_floor int,
max_of_customer int,
rental_fee double,
rental_type_id int,
service_type_id int,
availability_status varchar(50),
foreign key (rental_type_id) references RentalType(rental_type_id),
foreign key (service_type_id) references ServiceType(service_type_id)
);


 create table AccompaniedService(
accompanied_service_id int auto_increment primary key,
accompanied_service_name varchar(30),
price double,
unit int,
availability_status varchar(40)
 );
 
 
create table Contracts(
contract_id int auto_increment not null primary key,
employee_id int,
customer_id int,
service_id int,
date_started date,
date_finished date,
down_payment double,
total_payment double,
foreign key (employee_id) references Employees(employee_id),
foreign key (employee_id) references Employees(employee_id),
foreign key(service_id) references Services(service_id)
);
create table ContractDetail(
contract_detail_id int auto_increment primary key,
contract_id int,
accompanied_service_id int,
amount int,
foreign key (contract_id) references Contracts(contract_id),
foreign key (accompanied_service_id) references AccompaniedService(accompanied_service_id)
 );

insert into Positions(position_id, position_name)
value
	(1,'Nhân viên'),
	(2,'dội trưởng'),
	(3,'quan đốc'),
	(4,'Giám đốc');

insert into Employee_level(id_Employee_level, employess_level)
value
	(1,'A1'),
	(2,'A2'),
	(3,'B1'),
	(4,'B2');
    
    insert into Department(department_id, department_name)
value
	(1,'Marketing'),
	(2,'Tiếp thị'),
	(3,'F1'),
	(4,'F2');

    
insert into RentalType(rental_type_id, rental_type_name, price)
value
	(1,'Ngày',200000.00),
	(2,'Tháng',6000000.00),
	(3,'NĂm',1000000000.00),
	(4,'Giờ',100000.00);

insert into Servicetype(service_type_id, service_type_name)
value
	(1,'Villa'),
	(2,'House'),
	(3,'Room');
    
    insert into CustomerType(customer_type_id, customer_type_name)
value
	(1,'KimCuong'),
	(2,'BachKim'),
	(3,'Vang'),
	(4,'Bac'),
	(5,'Dồng');
    
    insert into AccompaniedService(accompanied_service_id, accompanied_service_name, price, unit, availability_status)
value
	(1,'Karaoke',10000.00,1, 'F'),
	(2,'Car',200000.00,2, 'T'),
	(3,'Drink',12000.00,3, 'FF'),
	(4,'Spa',2100.00,2, 'F');
    
    insert into Services(service_name, area_using, no_of_floor, max_of_customer, rental_fee, rental_type_id, service_type_id, availability_status)
values
("Villa A",	400.50,	3, 3,	1000000, 2, 1, "Available"),
("House A", 80.70, 3, 2, 300000, 1, 2, "Available"),
("Room 312", 70.3, 2, 3, 200000, 2, 1, "Available");

create database if not exists database_furama;
use database_furama;

create table Positions(
	position_id int primary key auto_increment,
    position_name varchar(50)
);
    
create table Employee_level(
	employee_level_id int primary key auto_increment,
	employess_level varchar(15)
);

create table Department(
	department_id int primary key auto_increment,
    department_name varchar(50)
);

create table RentalType(
	rental_type_id int primary key auto_increment,
    rental_type_name varchar(50),
    price double
);

create table Servicetype(
	service_type_id int primary key auto_increment,
    service_type_name varchar(50)
);
    
create table Employees(
	employee_id int auto_increment primary key,
    Employee_name varchar(40),
    position_id int ,
    employee_level_id int,
    department_id int ,
    date_of_birth date,
    id_card_number varchar(10) unique,
    salary double,
    phone_number varchar(10),
    email varchar(100),
    address varchar(200),
	foreign key(position_id) references Positions(position_id),
	foreign key(employee_level_id) references Employee_level(employee_level_id),
	foreign key(department_id) references Department(department_id)
);

create table CustomerType(
	customer_type_id int  primary key auto_increment,
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
    accompanied_service_name varchar(50),
    price double,
	unit int,
    availability_status varchar(50)
 );
    
create table Contracts(
	contract_id int auto_increment primary key,
    employee_id int,
    customer_id int,
    service_id int,
    date_started date,
    date_finished date,
    down_payment double,
    total_payment double,
	foreign key(employee_id) references Employees(employee_id),
	foreign key(customer_id) references Customers(customer_id),
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
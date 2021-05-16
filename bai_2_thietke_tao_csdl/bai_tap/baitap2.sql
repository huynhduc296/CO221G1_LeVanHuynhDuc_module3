create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(30)not null,
cAge int
);
create table Product(
pID int primary key,
pName varchar(30),
pPrice varchar(30)
);
create table `Order`(
oID int primary key,
cID int  ,
oDate date,
oTotalPrice int,
FOREIGN KEY (cID)
 REFERENCES Customer(cID)
);
create table OrderDetail(
oID int ,
pID int,
odQTY varchar(29),
primary key(oID,pID),
FOREIGN KEY (oID) REFERENCES`Order`(oID),
FOREIGN KEY (pID) REFERENCES Product (pID)
);

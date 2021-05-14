create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int NOT NULL primary key,
cName varchar(30)not null,
cAge int
);
create table Product(
pID int not null primary key,
pName varchar(30),
pPrice varchar(30)
);
create table `Order`(
oID int NOT NULL primary key,
cID int NOT NULL ,
oDate datetime,
oTotalPrice int,
FOREIGN KEY (cID)
 REFERENCES Customer (cID)
);
create table OrderDetail(
oID int not null,
pID int not null,
odQTY varchar(29),
FOREIGN KEY (oID)references `Order`(oID),
FOREIGN KEY (pID)references Product (pID),
primary key(oID,pID),
FOREIGN KEY (oID) REFERENCES`Order`(oID),
FOREIGN KEY (pID) REFERENCES Product (pID)
);

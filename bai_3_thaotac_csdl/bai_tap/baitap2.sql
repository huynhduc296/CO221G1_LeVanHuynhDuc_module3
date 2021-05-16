use quanlybanhang;
insert into Customer (cID,cName,cAge )
    VALUES (1, 'Minh Quan',10 );
INSERT INTO Customer (cID,cName,cAge )
    VALUES (2, 'Ngoc Oanh',20 );
INSERT INTO Customer (cID,cName,cAge )
    VALUES (3, 'Hong Ha',50);
    
insert into `Order`(oId,cId,order_day)
values (1,2,'2021/05/09'),
		(2,1,'1991/04/29'),
		(3,3,'1991/03/19');
INSERT INTO Product(pID,pName,pPrice)
	VALUES (1,"May Giat",3);
INSERT INTO Product(pID,pName,pPrice)
	VALUES (2,"Tu Lanh",5);
INSERT INTO Product(pID,pName,pPrice)
	VALUES (3,"Dieu Hoa",7);
INSERT INTO Product(pID,pName,pPrice)
	VALUES (4,"Quat",1);
INSERT INTO Product(pID,pName,pPrice)
	VALUES (5,"Bep Dien",2);

INSERT INTO OrderDetail(oID,pID,odQTY)
	VALUES 
    (1,1,3),
    (1,3,7),
    (1,4,2),
    (2,1,1),
    (3,1,8),
    (2,5,4),
    (2,3,3);
  

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID,order_day
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

select Customer.cName,Product.pName
from customer
inner join `order`
on Customer.cID = `order`.cID
join OrderDetail 
on `order`.oID = OrderDetail.oID
join product
on product.pID = OrderDetail.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào


select c.cName as NotODer
from customer c left join `order`
on c.cID = `order`.cID
where `order`.cID is null;


-- Outer Join 
-- Inner Join -> left join , right join , full join ( trong mySQL không hỗ trợ sau này sẽ học > Union -> full join )

--  Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice) 

select o.oID , o.order_day, sum(p.pPrice*od.odQTY)
from `order` o
join OrderDetail od on o.oID=od.oID 
join product p on od.pID=p.pID
group by o.oID;

-- group by : sd cho hàm gộp -< gộp theo cột mà ở đó các giá trị ở row nó giống nhau

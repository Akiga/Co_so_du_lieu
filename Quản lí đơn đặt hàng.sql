drop table Category
create table Category 
(	CategoryID char(3) primary key,
 	categoryname varchar(30)
)
insert into  Category
values ('C01','Banh'),
	   	('C02','Keo'),
	   	('C03','Sua'),
	   	('C04','Do Gia Dung'),
	   	('C05','Trai Cay')
select * from Category
delete Category
drop table Product
create table Product
(	ProductID char(3) primary key,
 	ProductName varchar(30),
 	UnitPrice float,
 	CategoryID char(3)
)
insert into Product
values ('P01','Oshi',1800,'C01'),
	   ('P02','Poca',5100,'C01'),
	   ('P03','Orio',1200,'C01'),
	   ('P04','Swing',1300,'C01'),
	   ('P05','Toonie',1400,'C01'),
	   ('P06','Lays',1500,'C01'),
	   ('P07','Banh Dua',4600,'C01'),
	   ('P08','Keo Deo',5700,'C02'),
	   ('P09','Keo Oi',6800,'C02'),
	   ('P10','Keo Dau',8900,'C02'),
	   ('P11','Keo Vai',2000,'C02'),
	   ('P12','Keo Nho',2700,'C02'),
	   ('P13','Vinamilk',5200,'C03'),
	   ('P14','Sua Bo',4300,'C03'),
	   ('P15','Sua De',2400,'C03'),
	   ('P16','Sua Ong Tho',4500,'C03'),
	   ('P17','Co gai Ha Lan',2600,'C03'),
	   ('P18','Sua BaVi',2700,'C03'),
	   ('P19','Dao Can Dai',2800,'C04'),
	   ('P20','Dao Nho',2900,'C04'),
	   ('P21','Thot',3000,'C04'),
	   ('P22','Chay Dam Tieu',3100,'C04'),
	   ('P23','Dao Sieu Bu',3200,'C04'),
	   ('P24','Muong',3300,'C04'),
	   ('P25','Xoai',9400,'C05'),
	   ('P26','Coc',3500,'C05'),
	   ('P27','Le',4600,'C05'),
	   ('P28','Chom Chom',3700,'C05'),
	   ('P29','Mang Cut',5800,'C05'),
	   ('P30','Mang Cau',8900,'C05')
Select * From Product
delete from Product

drop table Customer
create table customer
(
	CustomerID char (3)  primary key, 
	CustomerName varchar(50),
	CustomerAddress varchar (100)
)
insert into customer
values
('M01', 'Truong Giang','Ben Tre'),
('M02', 'Truong Minh','Ha Giang'),
('M03', 'Thanh Thi','Ca Mau'),
('M04', 'Tan Manh','TP HCM'),
('M05', 'Thai Duong','Phu Yen'),
('M06', 'Tan Phuc','Tien Giang'),
('M07', 'Suarez','Uruguay'),
('M08', 'Messi','Argentina'),
('M09', 'Ronaldo','Bo Dao Nha'),
('M10', 'Neymar','Brazil')
Select * From customer
delete from customer

drop table Orders
create table Orders
(
	OrderID char (3) primary key, 
	OrderDate date, 
	RequiredDate date, 
	CustomerID char (3)
)

insert into orders
values
('O01','2021-09-13','2021-11-13','M01'),
('O02','2021-04-14','2022-10-15','M05'),
('O03','2022-07-03','2023-10-19','M09'),
('O04','2021-03-30','2022-05-25','M04'),
('O05','2022-01-12','2023-05-23','M02'),
('O06','2021-12-19','2022-03-15','M06'),
('O07','2021-03-12','2022-09-27','M08'),
('O08','2023-04-30','2023-11-08','M07'),
('O09','2022-02-16','2022-11-16','M03'),
('O10','2022-01-09','2022-12-11','M10'),
('O11','2022-01-07','2022-12-11','M02'),
('O12','2022-01-02','2022-12-11','M06')

 select * from orders
 
 delete from Orderdetail
 drop table OrderDetail
 create table OrderDetail
 (  OrderID char (3), 
  ProductID char (3), 
  OrderQuantity int,
	 primary key (OrderID, ProductID)	
 )
 insert into OrderDetail
 values
 ('O01','P02', 35),
 ('O01','P04', 52),
 ('O01','P06', 57),
 ('O01','P01', 35),
 ('O01','P03', 52),
 ('O01','P05', 57),
 ('O01','P07',8),
 
 
 ('O02','P02', 35),
 ('O02','P04', 52),
 ('O02','P06', 57),
 ('O02','P01', 35),
 ('O02','P03', 52),
 ('O02','P05', 57),
 ('O02','P07',8),

 
 ('O03','P02', 35),
 ('O03','P04', 52),
 ('O03','P06', 57),
 ('O03','P01', 35),
 ('O03','P03', 52),
 ('O03','P05', 57),
 ('O03','P07',8),
 
 ('O04','P17',49),
 ('O04','P28',47),
 ('O04','P21',39),
 
 ('O05','P07',40),
 ('O05','P30',87),
 ('O05','P01',39),
 
  ('O06','P07',40),
 ('O06','P17',87),
 ('O06','P03',39),
 
  ('O07','P09',40),
 ('O07','P25',87),
 ('O07','P18',39),
 
 ('O08','P06',30),
 ('O08','P23',67),
 ('O08','P19',29),
 
 ('O09','P26',30),
 ('O09','P03',67),
 ('O09','P29',29),
 
 ('O10','P22',38),
 ('O10','P03',47),
 ('O10','P25',89),
 
 ('O11','P22',18),
 ('O11','P13',27),
 ('O11','P25',19),
 
 ('O12','P12',18),
 ('O12','P17',37),
 ('O12','P10',59)
 
 select * from orderdetail
 
 drop table Delivery
 create table Delivery
 (
 	DeliveryID char (3) primary key, 
	DeliveryDate date, 
	OrderID char (3)
 )
 
 insert into Delivery
 values
 ('D01','2021-09-19','O01'),
 ('D02','2021-09-26','O01'),
 ('D03','2021-10-13','O01'),
 
 ('D04','2021-07-14','O02'),
 ('D05','2021-09-24','O02'),
 ('D06','2021-12-14','O02'),
 
 ('D07','2022-09-23','O03'),
 ('D08','2022-03-30','O04'),
 ('D09','2022-11-12','O05'), 
 
 ('D10','2022-02-26','O09'),
 ('D11','2022-12-30','O06'),
 ('D12','2023-05-15','O08'),
 
 ('D13','2023-05-19','O08'),
 ('D14','2022-03-12','O07'),
 ('D15','2023-05-30','O08'),
 
 ('D16','2022-11-22','O06'),
 ('D17','2022-11-23','O06'),
 
 ('D18','2022-02-25','O09'),
 ('D19','2022-02-16','O09')
 
 select * from delivery
 
test 1
select * from Orders where orderID 
not in (select orderid from orderdetail)

test 2
select count(*)
from orderdetail

tets 3
select * from orderdetail where productId
not in (select productid from product)

Drop table DeliveryDetail
create table DeliveryDetail
(
	DeliveryID char (3),
	ProductID char (3),
	DeliveryQuantity int,
	primary key ( DeliveryID, ProductID)
)
 insert into deliverydetail
 values
 ('D01','P02', 5),
 ('D01','P04', 2),
 ('D01','P09', 7),
 
 ('D02','P02', 5),
 ('D02','P04', 3),
 ('D02','P09', 7),
 
 ('D03','P02', 3),
 ('D03','P04', 5),
 ('D03','P09', 6),
 
 ('D04','P25',1),
 ('D04','P15',2),
 ('D04','P05',1),
 
 ('D05','P25',2),
 ('D05','P15',3),
 ('D05','P05',1),
 
 ('D06','P25',4),
 ('D06','P15',5),
 ('D06','P05',1),
 
 ('D07','P27',4),
 ('D07','P08',7),
 ('D07','P01',7),
 
 ('D08','P17',49),
 ('D08','P28',47),
 ('D08','P21',39),
 
 ('D09','P07',40),
 ('D09','P30',87),
 ('D09','P01',39),
 
 ('D10','P26',30),
 ('D10','P03',67),
 ('D10','P29',29),
 
 ('D15','P06',3),
 ('D15','P23',7),
 ('D15','P19',9),
 
 ('D14','P09',40),
 ('D14','P25',87),
 ('D14','P18',39)
 
 select * from deliverydetail

select orderid, count(*)
from delivery
group by orderid

5.1
select * from product where categoryID='C02'

5.2
SELECT *
FROM Customer
JOIN Orders ON Customer.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '2021-09-13' AND '2022-09-14';

5.6
select C.*
from orders A, orderdetail B, product C
where A.OrderID=B.OrderID and B.ProductID=C.ProductID and Orderdate='2022-02-16'

5.7
select orderID, Sum(orderquantity)
from orderdetail
group by orderID
5.7.1 Tinh tri gia cua tung don dat hang
5.8
select orderID, Sum(orderquantity)
from orderdetail A, Orders B
where A.OrderID = B.orderID and
date_part ('year',Orderdate) = '2022' and date_part ('month',Orderdate) ='01'
group by orderID 

drop table R1
create table R1
(
	A int,
	B int
)

insert into R1
values
(3,1),
(3,2),
(4,1),
(5,2),
(6,1),
(6,2),
(6,3)

select * from R1

drop table R2
create table R2
(
	B int
)
insert into R2
values
(1),
(2)
select * from R2

select distinct A
from R1 X
Where not exists 
(
select *
	From R2
	Where B not in 
	(select B from R1
	where  X.A=A)
)

select * from product where categoryID='C03'

select * from orderdetail

select distinct orderid
from orderdetail X
where not exists
(select * from product
 where categoryid='C01'
and productid not in (select productid from orderdetail
			   where X.orderid = orderid))
			   
bài tập thầy Diêu đưa 
SELECT d.DeliveryID
FROM Delivery d
INNER JOIN (
  SELECT od.OrderID, SUM(od.OrderQuantity) AS TotalQuantity
  FROM OrderDetail od
  GROUP BY od.OrderID
) odq ON d.OrderID = odq.OrderID
INNER JOIN (
  SELECT dd.DeliveryID, SUM(dd.DeliveryQuantity) AS TotalQuantity
  FROM DeliveryDetail dd
  GROUP BY dd.DeliveryID
) ddq ON d.DeliveryID = ddq.DeliveryID
WHERE odq.TotalQuantity = ddq.TotalQuantity
			   
select Distinct deliveryID from delivery  
where not exists (select * from orderDetail 
				  where delivery.orderID = orderDetail.orderID 
				  and productID not in (
					  select productID 
					  from deliveryDetail 
					  where delivery.deliveryID =deliveryID ))
					  
ALTER TABLE Product
ADD CONSTRAINT CategoryID_fk
FOREIGN KEY (CategoryID)
REFERENCES Product(CategoryID)

ALTER TABLE Orders
ADD CONSTRAINT CustomerID_fk
FOREIGN KEY (CustomerID)
REFERENCES Orders(CustomerID)

ALTER TABLE OrderDetail
ADD CONSTRAINT OrderID_fk
FOREIGN KEY (OrderID)
REFERENCES OrderDetail(OrderID)

ALTER TABLE Product
ADD CONSTRAINT CategoryID_fk
FOREIGN KEY (CategoryID)
REFERENCES Product(CategoryID)

ALTER TABLE Orders
ADD CONSTRAINT CustomerID_fk
FOREIGN KEY (CustomerID)
REFERENCES Orders(CustomerID)

ALTER TABLE Delivery
ADD CONSTRAINT OrderID_fk
FOREIGN KEY (OrderID)
REFERENCES Delivery(OrderID)

ALTER TABLE DeliveryDetail
ADD CONSTRAINT DeliveryID_fk
FOREIGN KEY (DeliveryID)
REFERENCES DeliveryDetail(DeliveryID)

ALTER TABLE DeliveryDetail
ADD CONSTRAINT ProductID_fk
FOREIGN KEY (ProductID)
REFERENCES Product(ProductID)

select * from Product


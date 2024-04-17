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

drop table Warehouse
Create table Warehouse
(
	WarehouseID char(3) primary key,
	WarehouseAddress varchar(30),
	CategoryID char(3)
)
insert into Warehouse
values
('W01', 'Ben Tre', 'C01'),
('W02', 'TP HCM', 'C03'),
('W03', 'Ca Mau', 'C02'),
('W04', 'Phu Yen', 'C05'),
('W05', 'Vinh Long', 'C04')
Select * From Warehouse
Delete from Warehouse

drop table Instock
create table Instock
(
	WarehouseID char(3),
	ProductID char (3),
	Quantity int,
	primary key (WarehouseID, ProductID)
)
insert into Instock
values
('W01', 'P04',4632),
('W02', 'P13',9432),
('W03', 'P08',2735),
('W04', 'P28',1637),
('W05', 'P21',2632)
select * from Instock
delete  Instock

5.1
select * from Product where CategoryID ='C02'

5.2
select * from Warehouse where categoryID='C01'

5.3
select C.* 
from Warehouse C,product B,instock A
where A.productid= B.productid
and A.Warehouseid= C.Warehouseid
and productname='Keo Deo'

5.4
select * from Warehouse A,product B
where A.categoryID=B.categoryID
and warehouseid ='W01'

5.5
select sum (quantity) as TongTonKho
from Instock A, Warehouse B
where A.warehouseid= B.warehouseid

5.6
select max(quantity)
from Instock A, Warehouse B
where A.warehouseid= B.warehouseid

5.7
select warehouseid, count(*)
from product join warehouse on product.categoryid = warehouse.categoryid
group by WarehouseID

1.
select* from product
where categoryid not in 
(select categoryID from category)

2.
select * from instock A
where productid not in 
(select productid from warehouse B, product C
where A.warehouseid = warehouseid 
and B.categoryid = C.categoryid)

sua cau 5.5
select warehouseID, sum(quantity)
from Instock
group by WarehouseID

sua cau 5.6
select warehouseID, sum(quantity) 
from Instock
group by WarehouseID
having sum(quantity) > all

select * from product

ALTER TABLE Product
ADD CONSTRAINT CategoryID_fk
FOREIGN KEY (CategoryID)
REFERENCES Product(CategoryID)



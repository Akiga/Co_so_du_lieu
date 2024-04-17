drop table Category
create table Category 
(	CategoryID char(3) primary key,
 	categoryname varchar(30) not null unique
)
insert into  Category
values ('C01','Banh'),
	   	('C02','Keo'),
	   	('C03','Sua'),
	   	('C04','Do Gia Dung'),
	   	('C05','Trai Cay')
select * from Category
delete from Category
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
	   ('P07','Keo Dua',4600,'C02'),
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
drop table Invoice
create table Invoice
(
	InvoiceID char (3) primary key,
	InvoiceDate date,
	Description varchar (30)
)
insert into Invoice
values ('I01','2022-01-31','Si'),
		('I02','2016-01-20','Le'),
		('I03','2021-05-20','Si'),
		('I04','2019-09-22','Si'),
		('I05','2022-02-21','Si'),
		('I06','2023-03-02','Le'),
		('I07','2021-07-22','Le'),
		('I08','2020-02-02','Le'),
		('I09','2021-08-01','Si'),
		('I10','2021-05-10','Le')
select * from invoice	   
drop table invoicedetail
create table invoicedetail
(
	invoiceID char(3),
	productID char(3),
	quantity int,
	primary key(invoiceID,productID)
)
insert into invoicedetail
values ('I01','P03','226'),
	   ('I02','P04','941'),
	   ('I03','P06','326'),
	   ('I04','P08','146'),
	   ('I05','P19','41'),
	   ('I05','P01','174'),
	   ('I06','P26','134'),
	   ('I07','P15','176'),
	   ('I08','P09','149'),
	   ('I09','P27','106'),
	   ('I10','P11','243')
Select * From InvoiceDetail
delete InvoiceDetail

Select *from Product
Where CategoryID Not in ( Select CategoryID
						From Category)
						
Select * 
From InvoiceDetail
Where InvoiceID Not in (
Select InvoiceID From Invoice
)
Or ProductID Not in (Select ProductID From Product)

5.1
Select * From Product Where CategoryID = 'C01'

5.2
Select ProductID, ProductName, UnitPrice From Product Where CategoryID='C02'

5.3
Select * from Product Where UnitPrice > 1500 and UnitPrice <2500

5.4
Select * from Invoice Where Date_part ('Day',invoiceDate)=20

5.5
Select * from Invoice Where Date_part ('Year',invoiceDate)=2021

5.6
select C product, productname, unitprice,quantity
from invoice A, invoicedetail B, product C
where A.invoiceid=B.invoiceid
and B.productId=C.productid
and invoicedate='2020-02-02'

5.7
select invoiceID, SUm(quantity)
from invoicedetail
group by invoiceID

5.8
Select A.InvoiceID, Sum(Quantity)
From InvoiceDetail A, Invoice B
Where A.InvoiceID =B.InvoiceID and InvoiceDate = '2021-08-01'
Group by A.InvoiceID

5.9
Select InvoiceID, Sum(Quantity*UnitPrice) As Cost
From InvoiceDetail A, Product B
Where A.ProductID = B.ProductID
Group by InvoiceID

5.10 
SELECT Invoice.InvoiceID, SUM(InvoiceDetail.Quantity) AS TotalQuantity
FROM Invoice
INNER JOIN InvoiceDetail ON Invoice.InvoiceID = InvoiceDetail.InvoiceID
GROUP BY Invoice.InvoiceID

5.11
SELECT Invoice.InvoiceID, SUM(InvoiceDetail.Quantity) AS TotalQuantity
FROM Invoice
INNER JOIN InvoiceDetail ON Invoice.InvoiceID = InvoiceDetail.InvoiceID
WHERE Invoice.InvoiceDate = '2021-05-20'
GROUP BY Invoice.InvoiceID

5.12
SELECT Invoice.InvoiceID, SUM(InvoiceDetail.Quantity * Product.UnitPrice) AS TotalCost
FROM Invoice
INNER JOIN InvoiceDetail ON Invoice.InvoiceID = InvoiceDetail.InvoiceID
INNER JOIN Product ON InvoiceDetail.ProductID = Product.ProductID
GROUP BY Invoice.InvoiceID

5.13
SELECT Invoice.InvoiceID, SUM(InvoiceDetail.Quantity * Product.UnitPrice) AS TotalCost
FROM Invoice
INNER JOIN InvoiceDetail ON Invoice.InvoiceID = InvoiceDetail.InvoiceID
INNER JOIN Product ON InvoiceDetail.ProductID = Product.ProductID
WHERE Invoice.InvoiceDate = '2021-08-01'
GROUP BY Invoice.InvoiceID

5.14
SELECT EXTRACT(YEAR FROM Invoice.InvoiceDate) AS Year, SUM(InvoiceDetail.Quantity * Product.UnitPrice) AS TotalCost
FROM Invoice
INNER JOIN InvoiceDetail ON Invoice.InvoiceID = InvoiceDetail.InvoiceID
INNER JOIN Product ON InvoiceDetail.ProductID = Product.ProductID
GROUP BY Year

alter table StudentGrades
add constraint T01
check (grades >= 0
	  and Grades <=10)

alter table product
add Constraint CategoryID_FK
Foreign key (CategoryID)
References product(CategoryID)
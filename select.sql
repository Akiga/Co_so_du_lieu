select [CompanyName], [Country]
from dbo.Customers;

-- ten va sdt cac nha cung cap
select ContactName, phone
from dbo.Suppliers;

-------------------------------------------------------------------
-- distinct chon ra nhung ten khac nhau
select distinct  [ShipVia]
from dbo.Orders

-------------------------------------------------------------------
-- lấy có giới hạn
select top 5 [CustomerID]
from [dbo].[Orders];

select distinct top 3 [CategoryID]
from [dbo].[Products];

-- Đặt tên AS

-------------------------------------------------------------------
-- max và min
select min([BirthDate])
from [dbo].[Employees]

--count, sum và avg

-------------------------------------------------------------------
--đếm khách hàng
select COUNT([ContactName]) as numberofCus
from [dbo].[Customers];

--tính tổng số tiền vận chuyển
select sum([Freight]) as sumF
from [dbo].[Orders]

--tb số lg đặt hàng
select AVG([Quantity]) as TbHang
from [dbo].[Order Details]

--Đếm số lượng, tính tổng số lượng hàng trong kho 
--và trung bình giá của các sản phẩm có trong bảng Product.

select count(*)  , sum([UnitsInStock]) as unitInStock, avg([UnitPrice]) as avgPrice
from [dbo].[Products]

-- đếm đơn hàng
select count([OrderID])
from [dbo].[Orders]


-------------------------------------------------------------------
-- Bạn hãy liệt kê tất cả các nhà cung cấp theo thứ tự tên đơn vị CompanyName
-- Từ A-Z
select *
from [dbo].[Suppliers]
order by [CompanyName] asc



-------------------------------------------------------------------
--Tính số lượng sản phẩm còn lại trong kho (UnitsInStock) 
-- sau khi bán hết các sản phẩm đã được đặt hàng (UnitsOnOrder) .
-- StockRemaining = UnitsInStock – UnitsOnOrder
select [ProductID], 
	[ProductName], 
	[UnitsInStock], 
	[UnitsOnOrder], 
	([UnitsInStock] - [UnitsOnOrder])  as StockRemaining
from [dbo].[Products]



-------------------------------------------------------------------
-- Bạn hãy liệt kê tất cả các nhân viên đến từ thành phố London.
select *
from [dbo].[Employees]
where [City] = 'London'



-------------------------------------------------------------------
--Lấy danh sách các sản phẩm có giá bán trong khoảng từ 10 đến 20 đô la.
select *
from [dbo].[Products]
where [UnitPrice] between 10 and 20


-------------------------------------------------------------------
-- Hãy lọc ra tất cả các khách hàng đến từ các quốc gia (Country)
-- bắt đầu bằng chữ ‘A’
select *
from [dbo].[Customers]
where [Country] like 'A%'


-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘H’
-- , và có chữ thứ 2 là bất kỳ ký tự nào.

select *
from [dbo].[Customers]
where [ContactName] like 'H_%'
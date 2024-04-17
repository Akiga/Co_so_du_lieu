use [WOstation]
go

create table station
(
	id int primary key,
	city varchar(21),
	states varchar(2),
	LAT_N INT,
	long_w int
)

--1.	Truy vấn một danh sách các CITY và STATE từ bảng STATION.
select city, states
from station

-- 2.	Truy vấn 2 giá trị sau từ bảng STATION
--Tổng của tất cả các giá trị trong cột LAT_N, 
--được làm tròn đến một quy mô số chữ số thập phân. 
--Tổng của tất cả các giá trị trong cột LONG_W, 
--được làm tròn đến một quy mô số chữ số thập phân.

select ROUND(sum(LAT_N),1), ROUND(sum(long_w),1)
from station


--3.Truy vấn một danh sách tên các CITY từ bảng STATION cho các 
--thành phố có số ID là số chẵn.
--In kết quả theo bất kỳ thứ tự nào, nhưng loại bỏ các bản ghi trùng lặp khỏi câu trả lời.

select distinct[city]
from station
where id /2=0


--4.	Tìm sự khác biệt giữa tổng số lượng các bản ghi CITY trong bảng và
--số lượng bản ghi CITY không trùng lặp trong bảng.

select count(city)-count(distinct(city))
from station


--5.	Truy vấn hai thành phố trong bảng STATION có tên ngắn nhất và dài nhất, 
--cùng với độ dài tương ứng của chúng (tức là: số ký tự trong tên). 
--Nếu có nhiều hơn một thành phố nhỏ nhất hoặc lớn nhất, 
--hãy chọn thành phố đứng đầu khi sắp xếp theo thứ tự chữ cái.

----Khó chịu vcl


--6.	Truy vấn danh sách tên các thành phố bắt đầu bằng nguyên âm 
--(tức là, a, e, i, o, hoặc u) từ bảng STATION. 
--Kết quả của bạn không được chứa các bản ghi trùng lặp.

select distinct(city)
from station
where city like 'A[e,i,o,u]%'
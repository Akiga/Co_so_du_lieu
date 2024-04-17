create database Station
go

drop table city
create table city
(
	IB int primary key,
	names varchar(17),
	countryCode varchar(3),
	district varchar(20),
	populations int
)

insert into city(IB, names, countryCode, district, populations)
values (6,	'Rotterdam',	'NLD',	'Zuid-Holland',	593321),
	(3878,	'Scottsdale',	'USA',	'Arizona',	202705),
	(3965,	'Corona',	'USA',	'California',	124966),
	(3973,	'Concord',	'USA',	'California',	121780),
	(3977,	'Cedar Rapids',	'USA',	'Iowa',	120758),
	(3982,	'Coral Springs',	'USA',	'Florida',	117549),
	(4054,	'Fairfield',	'USA',	'California',	92256),
	(4058,	'Boulder',	'USA',	'Colorado',	91238),
	(4061,	'Fall River',	'USA',	'Massachusetts',	90555)
		
select * from city

-- 1. Truy vấn tất cả các cột cho tất cả các thành phố Mỹ trong 
--bảng CITY có dân số lớn hơn 100,000. Mã quốc gia của Mỹ là USA.

select * 
from city
where populations > 100000 and countryCode = 'USA'

-- 2. Truy vấn trường tên (NAME) cho tất cả các thành phố Mỹ trong 
--bảng CITY có dân số lớn hơn 120,000. Mã quốc gia của Mỹ là USA

select names
from city
where populations >120000 and countryCode = 'USA'

-- 3. Truy vấn tất cả các cột (thuộc tính) cho mỗi hàng trong bảng CITY.

select * from city

--4. Truy vấn tất cả các cột cho một thành phố trong bảng CITY có ID là 1661

select * from city
where IB = 1661


--5. Truy vấn tất cả các thuộc tính của mỗi thành phố Nhật Bản trong bảng CITY. 
--Mã quốc gia cho Nhật Bản là JPN

select * from city
where countryCode = 'JPN'


--6. Truy vấn tên của tất cả các thành phố Nhật Bản trong bảng CITY. 
--Mã quốc gia cho Nhật Bản là JPN.

select names from city
where countryCode = 'JPN'


--7. Truy vấn số lượng các thành phố trong bảng CITY có Dân số lớn hơn 100000
select count(*)
from city
where populations > 100000

--8. Truy vấn tổng dân số của tất cả các thành phố trong bảng CITY nơi Quận là California
select sum(populations)
from city
where district = 'California'

--9. Truy vấn trung bình dân số của tất cả các thành phố trong bảng CITY nơi Quận là California
select avg(populations)
from city
where district = 'California'

--10. Truy vấn dân số trung bình cho tất cả các thành phố trong bảng CITY, 
--làm tròn xuống số nguyên gần nhất.

select round(avg(populations),0)
from city

--11. Truy vấn tổng dân số của tất cả các thành phố Nhật Bản trong bảng CITY. 
--Mã quốc gia cho Nhật Bản là JPN.
select sum(populations)
from city
where countryCode = 'JPN'

--12. Tìm chênh lệch dân số giữa thành phố đông nhất và ít dân nhất trong bảng CITY

select (max(populations) - min(populations)) as 'chênh lệch dân số'
from city
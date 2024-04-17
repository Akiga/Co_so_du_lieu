drop table Country
create table Country
(	CountryID char(3) primary key,
 	CountryName char(30)
)
insert into Country
values ('C01','Bac'),
		('C02','Trung'),
		('C03','Nam')
select * from Country
drop table Province
create table Province
(	ProvinceID char(3) primary key,
 	ProvinceName char(30),
 	Population float,
	Area float,
 	CountryID char(3)
)
insert into Province
values ('P01','Hoa Binh','868623','4591','C01'),
		('P02','Son La','1286068','14123.5','C01'),
		('P03','Dien Bien','623295','9541','C01'),
		('P04','Lai Chau','480588','9068.8','C01'),
		('P05','Lao Cai','756083','6364','C01'),
		('P06','Yen Bai','838181','6887.7','C01'),
		('P07','Phu Tho','1495116','3534.6','C01'),
		('P08','Bac Giang','1858540','3851.4','C01'),
		('P09','Ha Giang','883388','7929.5','C01'),
		('P10','Tuyen Quang','797392','5867.9','C01'),
		('P11','Cao Bang','535098','6700.3','C01'),
		('P12','Bac Kan','318083','4860','C01'),
		('P13','Thai Nguyen','1322235','3536.4','C01'),
		('P14','Lang Son','791872','8310.2','C01'),
		('P15','Quang Ninh','1358490','6177.7','C01'),
		('P16','Ha Noi','8418883','3358.9','C01'),
		('P17','Bac Ninh','1450518','822.7','C01'),
		('P18','Ha Nam','867258','860.9','C01'),
		('P19','Hai Duong','1932090','1668.2','C01'),
		('P20','Hai Phong','2069110','1561.8','C01'),
		('P21','Hung Yen','1279308','930.2','C01'),
		('P22','Nam Dinh','1771000','1668','C01'),
		('P23','Thai Binh','1876579','1570.5','C01'),
		('P24','Vinh Phuc','1184074','1235.2','C01'),
		('P25','Ninh Binh','1000093','1387','C01'),
		('P26','Thanh Hoa','3690022','11114.7','C02'),
		('P27','Nghe An','3417809','16493.7','C02'),
		('P28','Ha Tinh','1301601','5990.7','C02'),
		('P29','Quang Binh','905895','8065.3','C02'),
		('P30','Quang Tri','639414','4739.8','C02'),
		('P31','Thua Thien Hue','1137045','5048.2','C02'),
		('P32','Da Nang','1191381','1284.9','C02'),
		('P33','Quang Nam','1510960','10574.5','C02'),
		('P34','Quang Ngai','1234704','5135.2','C02'),
		('P35','Binh Dinh','1487009','6066.2','C02'),
		('P36','Phu Yen','875127','5023.4','C02'),
		('P37','Khanh Hoa','1246358','5137.8','C02'),
		('P38','Ninh Thuan','595698','3355.3','C02'),
		('P39','Binh Thuan','1243977','7812.8','C02'),
		('P40','Kon Tum','565685','9674.2','C02'),
		('P41','Gia Lai','1566882','15510.8','C02'),
		('P42','Dak Lak','1897710','13030.5','C02'),
		('P43','Dak Nong','652766','6509.3','C02'),
		('P44','Lam Dong','1319952','9783.2','C02'),
		('P45','Ho Chi Minh','9411805','2061','C03'),
		('P46','Ba Ria-Vung Tau','1181302','1908.8','C03'),
		('P47','Binh Duong','2678220','2694.7','C03'),
		('P48','Binh Phuoc','1020839','6877','C03'),
		('P49','Dong Nai','3236248','5905.7','C03'),
		('P50','Tay Ninh','1190852','4041.4','C03'),
		('P51','An Giang','1864651','3536.7','C03'),
		('P52','Bac Lieu','917734','2669','C03'),
		('P53','Ben Tre','1295067','2394.7','C03'),
		('P54','Ca Mau','1191999','5294.8','C03'),
		('P55','Can Tho','1244736','1439.2','C03'),
		('P56','Dong Thap','1566882','3383.8','C03'),
		('P57','Hau Giang','728255','1621.8','C03'),
		('P58','Kien Giang','1730117','6348.8','C03'),
		('P59','Long An','1744138','4490.2','C03'),
		('P60','Tien Giang','1783165','2510.5','C03'),
		('P61','Tra Vinh','1010404','2358.2','C03'),
		('P62','Vinh Long','1022408','1475','C03'),
		('P63','Soc Trang','1181835','3318.8','C03')
select * from Province

drop table border
create table border
(	provincid char(3),
 	nationid char(3),
 primary key(provincid,nationid)
)
insert into border
values ('P03','CHN'),
		('P04','CHN'),
		('P05','CHN'),
		('P09','CHN'),
		('P11','CHN'),
		('P14','CHN'),
		('P15','CHN'),
		('P03','LAO'),
		('P02','LAO'),
		('P26','LAO'),
		('P27','LAO'),
		('P28','LAO'),
		('P29','LAO'),
		('P30','LAO'),
		('P31','LAO'),
		('P33','LAO'),
		('P40','LAO'),
		('P40','CPC'),
		('P41','CPC'),
		('P42','CPC'),
		('P43','CPC'),
		('P48','CPC'),
		('P50','CPC'),
		('P56','CPC'),
		('P59','CPC'),
		('P51','CPC'),
		('P58','CPC')
select * from border

delete from neighbor
drop table neighbor
create table neighbor
(
 ProvinceID char(3),
 NeighborID char(3),
 primary key (ProvinceID, NeighborID)
)
insert into neighbor
values  ('P01','P07'),
		('P01','P18'),
		('P01','P25'),
		('P01','P16'),
		('P01','P02'),
		('P01','P26'),
		('P02','P06'),
		('P02','P04'),
		('P02','P01'),
		('P02','P07'),
		('P02','P26'),
		('P02','P03'),
		('P03','P02'),
		('P03','P04'), 
		('P04','P05'),
		 ('P04','P03'),
		 ('P04','P02'),
		 ('P05','P04'),
		 ('P05','P09'),
		 ('P05','P06'),
		 ('P06','P05'),
		 ('P06','P07'),
		 ('P06','P09'),
		 ('P06','P10'),
		 ('P06','P02'),
		 ('P07','P24'),
		 ('P07','P02'),
		 ('P07','P06'),
		 ('P07','P01'),
		 ('P07','P10'),
		 ('P08','P16'),
		 ('P08','P17'),
		 ('P08','P19'),
		 ('P08','P14'),
		 ('P08','P15'),
		 ('P08','P13'),
		 ('P09','P11'),
		 ('P09','P10'),
		 ('P09','P05'),
		 ('P09','P06'),
		 ('P10','P09'),
		 ('P10','P12'),
		 ('P10','P13'),
		 ('P10','P06'),
		 ('P10','P24'),
		 ('P10','P07'),
		 ('P11','P09'),
		 ('P11','P10'),
		 ('P11','P12'),
		 ('P11','P14'),
		 ('P12','P11'),
		 ('P12','P14'),
		 ('P12','P13'),
		 ('P12','P10'),
		 ('P13','P12'),
		 ('P13','P24'),
		 ('P13','P10'),
		 ('P13','P14'),
		 ('P13','P08'),
		 ('P13','P16'),
		 ('P14','P11'),
		 ('P14','P08'),
		 ('P14','P15'),
		 ('P14','P13'),
		 ('P14','P12'),
		 ('P15','P14'),
		 ('P15','P08'),
		 ('P15','P19'),
		 ('P15','P20'),
		 ('P16','P13'),
		 ('P16','P18'),
		 ('P16','P08'),
		 ('P16','P17'),
		 ('P16','P21'),
		 ('P16','P01'),
		 ('P16','P07'),
		 ('P16','P24'),
		 ('P17','P08'),
		 ('P17','P16'),
		 ('P17','P21'),
		 ('P17','P19'),
		 ('P18','P16'),
		 ('P18','P21'),
		 ('P18','P23'),
		 ('P18','P22'),
		 ('P18','P25'),
		 ('P18','P01'),
		 ('P19','P17'),
		 ('P19','P08'),
		 ('P19','P15'),
		 ('P19','P23'),
		 ('P19','P21'),
		 ('P19','P20'),
		 ('P20','P15'),
		 ('P20','P23'),
		 ('P20','P19'),
		 ('P21','P17'),
		 ('P21','P16'),
		 ('P21','P19'),
		 ('P21','P18'),
		 ('P21','P23'),
		 ('P22','P23'),
		 ('P22','P25'),
		 ('P22','P18'),
		 ('P23','P19'),
		 ('P23','P21'),
		 ('P23','P20'),
		 ('P23','P18'),
		 ('P23','P22'),
		 ('P24','P10'),
		 ('P24','P13'),
		 ('P24','P07'),
		 ('P24','P16'),
		 ('P25','P18'),
		 ('P25','P22'),
		 ('P25','P01'),
		 ('P25','P26'),
		 ('P26','P02'),
		 ('P26','P01'),
		 ('P26','P25'),
		 ('P26','P27'),
		 ('P27','P28'),
		 ('P27','P26'),
		 ('P28','P27'),
		 ('P28','P29'),
		 ('P29','P28'),
		 ('P29','P30'),
		 ('P30','P29'),
		 ('P30','P31'),
		 ('P31','P30'),
		 ('P31','P33'),
		 ('P31','P32'),
		 ('P32','P31'),
		 ('P32','P33'),
		 ('P33','P31'),
		 ('P33','P32'),
		 ('P33','P34'),
		 ('P33','P40'),
		 ('P34','P33'),
		 ('P34','P40'),
		 ('P34','P41'),
		 ('P34','P35'),
		 ('P35','P34'),
		 ('P35','P36'),
		 ('P35','P41'),
		 ('P36','P35'),
		 ('P36','P37'),
		 ('P36','P41'),
		 ('P36','P42'),
		 ('P37','P36'),
		 ('P37','P42'),
		 ('P37','P44'),
		 ('P37','P38'),
		 ('P38','P37'),
		 ('P38','P39'),
		 ('P38','P44'),
		 ('P39','P38'),
		 ('P39','P44'),
		 ('P39','P46'),
		 ('P39','P49'),
		 ('P40','P33'),
		 ('P40','P41'),
		 ('P40','P34'),
		 ('P41','P42'),
		 ('P41','P35'),
		 ('P41','P40'),
		 ('P41','P36'),
		 ('P41','P34'),
		 ('P42','P41'),
		 ('P42','P36'),
		 ('P42','P37'),
		 ('P42','P44'),
		 ('P42','P43'),
		 ('P43','P42'),
		 ('P43','P44'),
		 ('P43','P48'),
		 ('P44','P43'),
		 ('P44','P42'),
		 ('P44','P48'),
		 ('P44','P49'),
		 ('P44','P39'),
		 ('P44','P38'),
		 ('P44','P37'),
		 ('P45','P47'),
		 ('P45','P50'),
		 ('P45','P46'),
		 ('P45','P49'),
		 ('P45','P59'),
		 ('P45','P60'),
		 ('P46','P45'),
		 ('P46','P49'),
		 ('P46','P39'),
		 ('P47','P45'),
		  ('P47','P48'),
		  ('P47','P49'),
		  ('P47','P50'),
		  ('P48','P47'),
		 ('P48','P43'),
		 ('P48','P44'),
		 ('P48','P50'),
		 ('P48','P49'),
		 ('P49','P47'),
		  ('P49','P39'),
		  ('P49','P45'),
		  ('P49','P46'),
		  ('P49','P44'),
		  ('P49','P48'),
		  ('P50','P47'),
		 ('P50','P48'),
		 ('P50','P45'),
		 ('P50','P59'),
		 ('P51','P56'),
		 ('P51','P55'),
		 ('P51','P58'),
		 ('P52','P63'),
		 ('P52','P54'),
		 ('P52','P58'),
		 ('P52','P57'),
		 ('P53','P60'),
		 ('P53','P61'),
		 ('P53','P62'),
		 ('P54','P52'),
		 ('P54','P58'),
		 ('P55','P51'),
		  ('P55','P56'),
		  ('P55','P62'),
		 ('P55','P58'),
		  ('P55','P57'),
		  ('P56','P62'),
		 ('P56','P55'),
		 ('P56','P51'),
		 ('P56','P59'),
		 ('P56','P60'),
		 ('P57','P62'),
		  ('P57','P55'),
		  ('P57','P52'),
		  ('P57','P63'),
		  ('P57','P58'),
		  ('P58','P54'),
		 ('P58','P52'),
		 ('P58','P51'),
		 ('P58','P55'),
		 ('P58','P57'),
		 ('P59','P45'),
		 ('P59','P50'),
		 ('P59','P56'),
		 ('P59','P60'),
		  ('P60','P45'),
		  ('P60','P59'),
		  ('P60','P56'),
		  ('P60','P62'),
		  ('P60','P53'),
		  ('P61','P53'),
		  ('P61','P63'),
		  ('P61','P62'),
		  ('P62','P60'),
		  ('P62','P53'),
		  ('P62','P56'),
		  ('P62','P61'),
		  ('P62','P57'),
		  ('P62','P63'),
		  ('P63','P53'),
		 ('P63','P57'),
		 ('P63','P61'),
		 
		 ('P10','P11'),
		 ('P53','P63'),
		('P63','P52'),
		('P62','P55'),
		('P63','P62'),
		('P07','P16')
select * from neighbor

select provinceID, Count (*)
From Neighbor A
Group by ProvinceID
Having Count(*) <> (
Select count (*)
From Neighbor
Where A.ProvinceID = NeighborID)
select count (*) from neighbor
5.1
SELECT ProvinceName FROM Province WHERE Area > 15000;

5.2
SELECT p1.*
FROM Province p1
JOIN Neighbor n ON p1.ProvinceID = n.ProvinceID
JOIN Province p2 ON n.NeighborID = p2.ProvinceID
WHERE p2.Area > 15000;

sửa 5.2 cách 1
Select *
from province
where provinceid in (
select neighborid
	from province A, Neighbor B
	where area > 15000
	and A.provinceid=  B.provinceid
)
sửa 5.2 cách 2
select c.*
from province A, Neighbor B,
Province C
where A. Area > 15000
and A.provinceID = B.ProvinceID
and B.Neighborid=C.ProvinceID

5.6
SELECT (SUM(Area) / 19) as Density
FROM Province
WHERE CountryID = 'C02';

5.7
SELECT ProvinceName
FROM Province
WHERE Population / Area = (SELECT MAX(Population / Area) FROM Province);

5.8
SELECT *
FROM Province
WHERE Area = (SELECT MAX(Area) FROM Province);

SELECT *
FROM Province
WHERE Population = (SELECT MAX(Population) FROM Province);

SELECT *
FROM Province
WHERE Population = (SELECT Min(Population) FROM Province);

5.9

5.10
Select B.ProvinceID, ProvinceName, Count(*)
from border A, province B
where A.provinceid=B.provinceid
group by B.provinceid, provinceName
Having count(*) >=2

5.12
SELECT p.provinceid,p.ProvinceName, COUNT(n.NeighborID) AS NumNeighbors 
FROM Province p 
JOIN Neighbor n ON p.ProvinceID = n.ProvinceID 
GROUP BY p.ProvinceID 
ORDER BY NumNeighbors DESC 
LIMIT 1;

select c.*
from province A, Neighbor B,
Province C
where A. provinceid = 'P16'
and A.provinceID = B.ProvinceID
and B.Neighborid=C.ProvinceID

/*tinh lon nhat cac mien*/
SELECT ProvinceName, Area
FROM Province
WHERE countryid = 'C03'
ORDER BY Area DESC
LIMIT 1;

SELECT ProvinceName, Area
FROM Province
WHERE countryid = 'C02'
ORDER BY Area DESC
LIMIT 1;

SELECT c.CountryID, c.CountryName, p.ProvinceID, p.ProvinceName, p.Area
FROM Province p
JOIN Country c ON p.CountryID = c.CountryID
WHERE (p.Area, c.CountryID) IN (
  SELECT MAX(p2.Area), c2.CountryID
  FROM Province p2
  JOIN Country c2 ON p2.CountryID = c2.CountryID
  GROUP BY c2.CountryID
)
ORDER BY c.CountryID;
thầy sửa
select A.Countryid, countryname, provinceid,provincename,area
from Country A, province B
Where A.countryid=B.countryid
and area = (select Max(area)
		   from province
		   where A.CountryID=Countryid)
		   
select A.Countryid, countryname, provinceid,provincename,area
from Country A, province B
Where A.countryid=B.countryid
and area = (select Min(area)
		   from province
		   where A.CountryID=Countryid)

SELECT c.CountryID, c.CountryName, p.ProvinceID, p.ProvinceName, p.Population
FROM Province p
JOIN Country c ON p.CountryID = c.CountryID
WHERE (p.Population, c.CountryID) IN (
  SELECT MAX(p2.Population), c2.CountryID
  FROM Province p2
  JOIN Country c2 ON p2.CountryID = c2.CountryID
  GROUP BY c2.CountryID
)
ORDER BY c.CountryID

SELECT c.CountryID, c.CountryName, p.ProvinceID, p.ProvinceName, p.Population
FROM Province p
JOIN Country c ON p.CountryID = c.CountryID
WHERE (p.Population, c.CountryID) IN (
  SELECT Min(p2.Population), c2.CountryID
  FROM Province p2
  JOIN Country c2 ON p2.CountryID = c2.CountryID
  GROUP BY c2.CountryID
)
ORDER BY c.CountryID;

select *
from province A
where area > (select avg(area)
			 from Neighbor B, Province C
			 where A.Provinceid=B.provinceid
			 and B.Neighborid=C.Provinceid)
			 
select *
from province A
where area > all(select (area)
			 from Neighbor B, Province C
			 where A.Provinceid=B.provinceid
			 and B.Neighborid=C.Provinceid)
			 
5.16
SELECT B.Countryid, CountryName,Sum(Area)
From Province A, Country B
Where A.CountryID = B.CountryID
Group by B.Countryid, CountryName
Having Sum(Area) >= all 
 (
	 SELECT Sum(Area)
From Province A, Country B
Where A.CountryID = B.CountryID
Group by B.Countryid, CountryName
 )
 
5.15
Select CountryId, ProvinceID, ProvinceName, Area
From Province A
Where Area > (Select Avg(Area)
			 from Province
			 Where A. CountryID= CountryID)
order by CountryID

Select Avg(Area)
			 from Province A
			 Where province
			 
select *
from province
where countryid='C01'
and Area > '4656'

cách thầy từng miền 
select CountryId, ProvinceID, ProvinceName, Area
from province a
where countryid='C03'
and area > (select avg(area)
from province
where a.countryid=countryid)

select CountryId, ProvinceID, ProvinceName, Area
from province a
where countryid='C01'
and area > (select avg(area)
from province
where a.countryid=countryid)

select CountryId, ProvinceID, ProvinceName, Area
from province a
where countryid='C02'
and area > (select avg(area)
from province
where a.countryid=countryid)

select CountryId, ProvinceID, ProvinceName, Area
from province a
where  area > (select avg(area)
from province
where a.countryid=countryid)
order by countryid	

ALTER TABLE Neighbor
ADD CONSTRAINT ProvinceID_fk
FOREIGN KEY (ProvinceID)
REFERENCES Province(ProvinceID)

ALTER TABLE Neighbor
ADD CONSTRAINT NeighborID_fk
FOREIGN KEY (NeighborID)
REFERENCES Neighbor(NeighborID)


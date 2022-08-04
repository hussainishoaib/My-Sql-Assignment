create database SaintClaraServices

use SaintClaraServices

create table CustomerHeader(ClientID int primary key,FirstName char(225),MiddleName char(225),
LastName char(225),Gender char(225),DateOfBirth date,City varchar(225),MartialStatus char(225),Age int,
Employment char(225),CompanyName varchar(225),CompanyAddress varchar(225))

-- Insert Value Table CustomerHeader
insert into CustomerHeader values(1,'Bisma','Naeem','Female','1998-1-2','Karachi','Single',24,'null','null','null','null')
insert into CustomerHeader values(2,'Rehman','Malik','Male','1990-3-3','Lahore','Married',32,'Private Job','DynCorp','2 Link Road Welwyn','null')
insert into CustomerHeader values(3,'Saniya','Malik','Female','1996-4-15','Islamabad','Single',26,'Private Job','Danone','2 Lane#2,Off Clifton','null')
insert into CustomerHeader values(4,'Ajmal','Hussain','Male','1994-8-10','Karachi','Single',28,'Govt Job','Comcast','College Road Township','null')
insert into CustomerHeader values(5,'Adil','Rehman','Male','1995-9-12','Lahore','Married',27,'Sales Job','Coca-Cola Company','Deenpura P.O.Box:2366','null')
insert into CustomerHeader values(6,'Zohaib','Nasir','Male','1992-10-16','Islamabad','Married',30,'Govt Job','Metro Cash&Carry','Azhar Office#14 F.D.A Market','null')
insert into CustomerHeader values(7,'Sonia','Fahad','Female','2000-12-25','Rawalpindi','Single',22,'Private Job','UPC','40-Talpur Road','null')
insert into CustomerHeader values(8,'Hussain','Shah','Male','2002-1-26','Karachi','Single',20,'Private Job','Global Print','#2,1st Floor,Gapan Centre','null')
insert into CustomerHeader values(9,'Naveed','Hussain','Male','1996-6-10','Lahore','Married',26,'Private Job','Amazon.Com','United-State','null')
insert into CustomerHeader values(10,'Fahad','Hameed','Male','1995-7-14','Islamabad','Married',27,'Private Job','Leadertech Consulting','F-451 Opposite Estate','null')

select * from CustomerHeader
-- Employment Char Change Into Varchar
alter table CustomerHeader
modify column Employment varchar(225)

-- Update Employment Column Value Private Job To Sales Job
update CustomerHeader set Employment = 'Sales Job' where ClientID = 9
select column_name,data_type from information_schema.columns where table_schema = 'SaintClaraServices' and table_name = 'CustomerHeader'

-- Add Column Qualification Char
alter table CustomerHeader
add Qualification char(225)

-- Drop Out MiddleName Column
alter table CustomerHeader
drop column MiddleName

-- Second Table
create table CustomerDetail(CustomerID int primary key,
CltnID int,
FatherName char(225),
MotherName char(225),
Amount bigint,
Period int,
Permium bigint,
NomineeName char(225),
Date date,
Time time,
FOREIGN KEY (CltnID) REFERENCES CustomerHeader(ClientID))

-- Insert Value Table CustomerDetail
insert into customerdetail values(1,1,'Naeem','Seema',300000,3,30000,'Wife','2009-1-15','Health Insurance')
insert into customerdetail values(2,5,'Malik','Ashna',100000,4,100000,'Wife','2010-2-16','Car Insurence')
insert into customerdetail values(3,7,'Malik','Romana',400000,5,40000,'Sister','2011-3-21','Life Insurence')
insert into customerdetail values(4,8,'Hussain','Fariha',200000,'2 Year',20000,'Brother','2012-6-20','Car Insurence')
insert into customerdetail values(5,4,'Rehman','Sadia',300000,'30 Months',30000,'Sister','2013-08-5','Home Insurence')
insert into customerdetail values(6,3,'Nasir','Zahida',100000,'3 Year',10000,'Brother','2014-12-30','Health Insurence')
insert into customerdetail values(7,1,'Fahad','Naheed',400000,'4 Year',40000,'Sister','2015-11-31','Car Insurence')
insert into customerdetail values(8,2,'Shah','Farha',200000,'5 Year',20000,'Wife','2016-7-8','Life Insurence')
insert into customerdetail values(9,10,'Hussain','Shumaila',250000,'2 Year',25000,'Son','2017-1-9','Car Insurence')
insert into customerdetail values(10,5,'Hameed','Sonia',350000,'30 Months',35000,'Sister','2018-12-30','Home Insurence')

select * from CustomerDetail

-- Update CustomerID Column Value Car Insurence To Home Insurence
update CustomerDetail set Employment = 'Home Insurence' where ClientID = 1

-- Alter Column Period Int to Bigint
alter table CustomerDetail
modify column Period bigint

-- Add Column Plan varchar
alter table CustomerDetail
add Plan varchar(225)

-- Drop Out Time Column
alter table CustomerDetail
drop column Time

select column_name,data_type from information_schema.columns where table_schema = 'SaintClaraServices' and table_name = 'CustomerDetail'


drop table CustomerDetail
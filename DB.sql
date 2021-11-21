create database BookHunt
use BookHunt

create Table Book(
 BookId varchar(25) primary key,
 Category varchar(25),
 CategoryId varchar(25),
 Title varchar(50),
 ISBN int,
 [Year] int,
 Price int,
 Detail varchar(100),
 Position int,
 [Status] int,
 Img varchar(30)
)

Insert into Book values('A101', 'Fiction', 'C101', 'Five Point SomeOne', 56895, 2012, 365, 'Story of 3 IITians', 658, 1, 'NOA')
Insert into Book values('A102', 'Fiction', 'C101', 'Five Point SomeOne', 56895, 2012, 365, 'Story of 3 IITians', 658, 1, 'NOA')
Insert into Book values('A103', 'Fiction', 'C101', 'Five Point SomeOne', 56895, 2012, 365, 'Story of 3 IITians', 658, 1, 'NOA')
Insert into Book values('A104', 'Fiction', 'C101', 'Five Point SomeOne', 56895, 2012, 365, 'Story of 3 IITians', 658, 1, 'NOA')
Insert into Book values('A105', 'Fiction', 'C101', 'Five Point SomeOne', 56895, 2012, 365, 'Story of 3 IITians', 658, 1, 'NOA')

select * from Book

create Table Customer
(
Id int primary key identity,
FullName varchar(30),
Email varchar(30),
Passcode varchar(20),
Mobile varchar(20)
)

select * from Customer
Insert into Customer (FullName, Email, Passcode, Mobile) values('Ravi', 'r@gmail.com', '123456', '8596124586')
Insert into Customer (FullName, Email, Passcode, Mobile) values('Ram', 'r@gmail.com', '123456', '8596124586')
Insert into Customer (FullName, Email, Passcode, Mobile) values('Rohit', 'r@gmail.com', '123456', '8596124586')
Insert into Customer (FullName, Email, Passcode, Mobile) values('Rakesh', 'r@gmail.com', '123456', '8596124586')
Insert into Customer (FullName, Email, Passcode, Mobile) values('Rajesh', 'r@gmail.com', '123456', '8596124586')
Insert into Customer (FullName, Email, Passcode, Mobile) values('Rama', 'r@gmail.com', '123456', '8596124586')


create Table Wishlist
(
 Id int foreign key references Customer(Id),
 BookId varchar(25) foreign key references Book(BookId),
)

select * from Wishlist

Insert into Wishlist values(1, 'A101')
Insert into Wishlist values(2, 'A102')
Insert into Wishlist values(2, 'A103')
Insert into Wishlist values(3, 'A101')

create Table Myorder
(
 OrderId int primary key identity,
 BookId varchar(25) foreign key references Book(BookId),
 Id int foreign key references Customer(Id),
 [Time] time,
 [Date] date
)

select * from Myorder
Insert into Myorder (BookId, Id) values('A101', 2)

create Table Sendto(
Id int foreign key references Customer(Id),
Village varchar(30),
Post    varchar(25),
District varchar(25),
[State] varchar(25),
Pincode int
)

select * from Sendto
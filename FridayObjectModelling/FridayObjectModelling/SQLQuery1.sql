--create database kubrick;

use kubrick;
go
--create schema customer;
go

create table customer.customer
(
id int not null identity(1000000,1) primary key,
fname varchar(50),
lname varchar(50),
dob date null
)
go


create table customer.phone
(
phone_id int not null identity(1000000,1) primary key,
number varchar(50),
number_type varchar(50) not null,
customer_id int not null references customer.customer(id)
)
go

create table customer.address
(
address_id int not null identity(1000000,1) primary key,
add_line1 varchar(50) not null,
add_line2 varchar(50),
add_city varchar(50) not null,
add_country varchar(50) not null,
add_postcode varchar(50) not null,
customer_id int not null references customer.customer(id)
)

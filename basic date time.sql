create schema argon;
use argon;
create table employees
(
	ename varchar(20),
    eage int,
    esalary decimal(12,2),
    edob date,
    in_time time, -- time (timeonly), datetime( both date and time) 
    last_login datetime
);

insert into employees
values('Arun Singh', 35, 67854.23, '2001-04-23', '17:30', '2025-06-10 12:24:54');

select * from employees;

insert into employees
values('Nidhi Jha', 42, 84845.23, '1990-09-08', '13:23', '2025-06-10 18:20:21');

create table products
(
	prod_name varchar(20),
    prod_price decimal(12,2),
    manufac_date date
);

insert into products
values("saltpeter", 235.45, '2025-05-23');

insert into products
values("black rice", 60.40, '2025-06-01');

insert into products
values("Wheat Biscuits", 120.00, '2025-03-23');



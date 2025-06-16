use sakila;
show tables;

select * from actor
where actor_id between 25 and 100
and  first_name like "%a%"
order by last_name desc;

use world;

/*
From Sakila Database find all actors who are in range 25 to 100 
and their first name consist of a at any position sort data by last name 
in descending order
*/

use sakila;

select * from actor
where actor_id between 25 and 100
and first_name like "%a%"
order by last_name desc;

-- Aggregate function Continue

use world;

select * from country;

/*
Find sum of population based on Continent
North America 482993000
Asia 3705025700
Africa 784475000
*/

select * from country;
select continent, sum(population) from country
where continent = "North America";

select continent, sum(population) from country
where continent = "Asia";

select continent, sum(population) from country
where continent = "Africa";

select continent, sum(population) from country
group by continent;

/*
Write a query to identify number of countries(count) in each continent
*/

select continent, count(*) as number_of_countries from country
group by continent;

/*
Write a query to identify continent 
which have countries between 20 to 50
*/

-- generated column -> Column created by functions of some formula
-- where clause doesnot support conditions on generated column 
select continent, count(*) as number_of_countries from country
group by continent
having count(*) between 20 and 50;

select continent, count(*) as number_of_countries from country
group by continent
having count(*) between 20 and 50
order by number_of_countries;

-- DDL

create database sprk;

use sprk;

create table student 
(
	-- table structure
    -- column_name data_type constraints
    roll_name int,
    first_name varchar(50),
    last_name varchar(50)
);

describe student;

select * from student;

show create table student;
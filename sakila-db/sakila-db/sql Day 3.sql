-- Day 3 more select queries

use sakila;

-- Single level sort.

select *from actor
order by first_name;

-- asc is default.
select *from actor
order by first_name asc;

select *from actor
order by first_name desc;

-- multi level sort
select *from actor
order by first_name, actor_id desc;

select *from actor
order by first_name desc, last_name;

/*
Order of Query
Select > where > order by
*/

select * from actor
where actor_id between 20 and 40
order by actor_id desc;

/*
Like -> It is used for pattern matching
Wildcard:
%
_
*/

-- % is used to represent "anything" or any character
select * from actor
where first_name like "A%";


select * from actor
where first_name like "AN%";


select * from actor
where first_name like "%A";

select * from actor
where first_name like "%A%";

select * from actor
where first_name like "%TA%";

select * from actor
where first_name like "A%E";

select * from actor
where first_name like "J%R";

select * from actor
where first_name like "A%E%";
select * from actor
where first_name like "%A%E%";


select * from actor
where first_name like "__";

select * from actor
where first_name like "S___";

select * from actor
where first_name like "S_N_";

select * from actor
where first_name like "A__E";
select * from actor
where first_name like "A__E%";


show tables;

select * from customer;

/*
FROM SAKILA:
1. Find Customer whose first_name consist of AN at any position
	and last_name show end with ON
2. Find All Customer whose first_name have A at any position and 
	their id should be in range 20 to 150

FROM WORLD:
3. Find all contries whose name consist of I at start
*/

select * from customer
where first_name like "%AN%" and last_name like "%ON";

select * from customer
where customer_id between 20 and 150 
and first_name like "%A%";


use world;

show tables;

select * from country
where name like "I%";

-- ----------------------------------------------------------------------
select * from country;

-- distinct gives unique values.
select distinct continent from country;

select distinct region from country;

-- -----------------------------------------------------------------------
-- Aggregate Functions
/*
1. sum()
2. min()
3. max()
4. count()
5. avg()
*/

select * from country;
select max(population) from country;

-- WRONG
select name, max(population) from country; -- ERROR

-- MAX = 1277558000
select * from country
where population = 1277558000;

-- ERROR
select * from country
where population = max(population);

select min(population) from country;
select * from country
where population = 0;


select max(population) from country
where population < 1277558000;
-- Second highest population = 1013662000

select * from country
where population = 1013662000;

select count(name) from country;

select count(indepyear), count(name) from country;
select count(*) from country;

select sum(population) as total_population
, avg(population) as avg_population, count(*) as total_countries
from country;

-- Fetching null values
select * from country
where indepyear = null;
select * from country
where indepyear is null;

select * from country
where indepyear is not null;

select * from country
where indepyear <0;

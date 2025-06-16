-- Day 2

-- Select Queries
use sakila;

show tables;

/*
Logical Operator (More than one conditions combine)
and
or
not
*/

-- Find all actors whose id is in between 20 to 30

select * from actor
where actor_id >=20 and actor_id<=30;

-- Find all actor whose first_name is Penelope
-- and their actor id is between 50 to 110

select * from actor
where first_name = "Penelope"
and actor_id >=50 and actor_id <= 110;

select * from actor
where first_name = "Penelope" 
and last_name = "West";

-- or
select * from actor
where first_name = "Penelope";

select * from actor
where last_name = "west";


select * from actor
where first_name = "Penelope" 
or 
last_name = "West";


select * from actor
where first_name = "Penelope" 
or 
last_name = "Chase";


select * from actor
where first_name = "Penelope" 
or
actor_id <=10;


select * from actor
where first_name = "Penelope" 
or
last_name = "Mishra"
or
actor_id <=10;

-- Guess the Output


select * from actor;

select * from actor
where first_name = "Penelope" 
or
last_name = "Chase"
and
actor_id =176;

select * from actor
where first_name = "Penelope" 
and
last_name = "Chase"
or
actor_id =176;


select * from actor
where first_name = "Penelope" 
and
last_name = "CRONYN"
or
actor_id =176;

select * from actor
where first_name = "Penelope" 
and
(last_name = "CRONYN"
or
actor_id =176);

select * from actor
where first_name = "Penelope" 
and
(last_name = "CRONYN"
or
actor_id =120);

select * from actor
where not first_name = "Penelope";

-- Find actor whose id is either 3,5,20,90,25,200

select * from actor
where actor_id = 3 or 
actor_id = 5 
or 
actor_id = 20
or 
actor_id = 90
or 
actor_id = 25 
or 
actor_id = 200;

-- in / not in
select * from actor
where actor_id in (3,5,20,90,25,200);

select * from actor
where first_name in 
("Ed","Penelope","Mary","Nick","Rohit");

select * from actor
where actor_id not in (3,5,20,90,25,200);

select * from actor
where actor_id in (3,5,20,90,25,200)
and first_name in("ED","Kevin");

-- find all actor whose actor is in range 30 to 35
select * from actor
where actor_id >= 30 and actor_id <= 35;

-- between and not between
select * from actor
where actor_id  between 30 and 35;


-- find all actor whose actor is in range 30 to 35
-- as well as actor_id in range 90 to 95
select * from actor
where actor_id >= 30 and actor_id <= 35
or actor_id >= 90 and actor_id <= 95;

select * from actor
where actor_id  between 30 and 35
or actor_id between 90 and 95;


select * from actor
where actor_id  not between 30 and 35;

select * from actor
where actor_id  between 30 and 35;


-- Limit and Offset
select * from actor
limit 10;

select * from actor
limit 10 offset 10;

select * from actor
limit 5 offset 190;




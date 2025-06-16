use sakila;
show tables;

select 5;

select 5, 15;

select 5*10;
# or -- Single Line Comment
#as -> Aliases
-- as -> Aliases : Just another name for any of the column
select 5*10 as multiply;

select 5 as five, 15 as fifteen;

-- View Values/ Rows From Tables
-- * -> Means All Column From That Table
select * from actor;

select * from payment;

-- Select only first name and last name column from actor table
select first_name, last_name from actor;

/*
Arithmatic Operators -> Values
*
/
DIV
%
+
-
*/

select  11 * 3 as multiply, 
11/3 as decimal_quotient,
11%3 as remainder,
11 DIV 3 as integer_quotient;

select title,rental_rate, 
rental_rate + 0.1 * rental_rate as total_with_tax from film;


/*
Relational Operators (True / False)
> - Greater Than
< - Less Than
>= - Greater Than or Equal To
<= - Less Than or Equal To
= - Equal To
!= / <> - Not Equal To
*/

-- COnditional Operator We require where clause

select * from actor
where actor_id < 10;

select * from actor
where actor_id > 1000;

select * from actor
where actor_id > 190;

select * from actor
where actor_id = 10;


select * from actor
where actor_id <= 10;


select * from actor
where actor_id != 10;

select * from actor
where first_name = "penelope";

select * from actor
where first_name > "penelope";

select * from actor
where first_name != "penelope";
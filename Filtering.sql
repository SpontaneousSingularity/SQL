-- filtering
-- relational opeerators <, >, <=, >=, =, <>(not equal to)

select * from students where maths >= 35;

select * from students where roll = 234;

select * from students where standard = 5;

select * from students where address = "Pune";

-- logical operators and, or, not
select * from students
where standard = 5
or standard = 7
or standard = 9; 

select * from students
where standard in (5,7,9); -- same as previous statement.

-- answer to problem questions given
select * from students 
where maths >= 45
and maths <= 60;

select * from students 
where (standard = 6 and division = 'B')
or (standard = 8 and division = 'C');

select * from students 
where (address = "Pune" and standard = 10) ;

-- find students who only passed in 2 subjects

select * from students 
where sname like 'A%';

-- first letter a and third letter O
select * from students 
where sname like 'A_O%';

--  with OO anywhere in middle
select * from students 
where sname like '%OO%';

-- five letter name
select * from students 
where sname like '______';

-- name start and end with a and o
select * from students 
where sname like 'A%O';
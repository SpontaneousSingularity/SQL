select * from students 
order by roll
limit 10;
-- limiting the result
/*
-- in a sql server 
select top 10 *from students;

-- sql server and oracle
select * from students
order by roll
offset 0 rows
fetch next 10 rows only
*/

select * from students 
order by roll
limit 10 offset 14;
-- shows students from roll no from 15 to 24
/*
-- sql server and oracle
select * from students
order by roll
offset 0 rows
fetch next 10 rows only
*/
-- fetch 10 students with highest marks in maths
select * from students
order by maths desc
limit 10;


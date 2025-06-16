set sql_safe_updates = 0; -- 0 means False
update students
set maths = 18 
where roll = 3;
set sql_safe_updates = 1; -- 1 means 

set sql_safe_updates = 0; -- 0 means False
update students
set maths = 18 ,english = 80, sname = "Aditi"
where roll = 3;
set sql_safe_updates = 1; -- 1 means true

create table persons(pname varchar(20));
insert into persons(pname) values ("Amit"),("Nidhi"),("Krunal");

select * from persons;

set sql_safe_updates = 0; 
delete from persons
where pname = "Krunal";
set sql_safe_updates = 1; 
-- delete from persons will delete everything
-- it will delete n rows one by one

-- use truncate to simply delete all data from table witout iteration
truncate table persons;


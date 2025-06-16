

/*Constrains
1. Primary key: there cannnot be duplicate values and null values
2. Not NUll: null not allowed duplicates are.
3. unique: duplicate not alllowed Null allowed
4. check: enforces a logical condition.
5. default: if values not provided null is used.
*/
create table worker
(
eid int primary key,
ename varchar(20) not null,
email varchar(50) not null unique,
esalary decimal(10,2) check (esalary >= 20000),
edept varchar(10) default 'sales' check(edept in ("sales","hr","it","purchase"))
);

insert into worker(eid,ename,email,esalary,edept)
values(1, "Neete singh", "neetasingh@gmail.com", 73739,"sales");



use school_db;


create table students
(
std_id int,
std_name varchar(20),
email varchar(20),
age int,
score int
)




create table teacher(
t_id int primary key,
teach_name varchar(50)not null,
email varchar(100) unique,
age int check (age>=16),
salary int DEFAULT 0
)

insert into students
(std_id,std_name,email,age,score)
values(2,'Abba','abba@email.com',10,90),
		(3,'ali','ali@email.com',15,80),
		(4,'Abdi','abdi@email.com',16,90),
		(5,'Amina','amina@email.com',17,90),
		(6,'Abdikadir','abdikadir@email.com',19,90)


insert into teacher
(t_id,teach_name,email,age,salary)
values(1,'Ali','ali@email.com',18,2)

select * from students
select * from teacher

select std_name,score
from students
select * from students
where age < 16

 select count(*) as total_students
 from students

 select min(score) as min_student from students

 select max(score) as max_student from students

 select sum(score) as sum_student from students

select age,
count(*) as total_students from students
Group by age

select age,
count(*) as total_students from students
Group by age
having count(*)>2

update students
set score=90
where std_id=3

delete from students
where std_id=2

alter table students
add phone varchar(20)

alter table students
add adress varchar(20)

ALTER TABLE students
ADD CONSTRAINT UQ_students_email
UNIQUE (email);

alter table students
alter column std_name
varchar(100)

select getdate() as currentDate
SELECT CAST(GETDATE() AS DATE) AS currentdate;
select dateadd(day,10,'2026-01-11','2026-01-11')
select datediff(day,10,'2026-01-11','2026-01-11
select* from students
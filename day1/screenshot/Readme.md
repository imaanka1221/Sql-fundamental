School Database SQL Project

Overview

This project demonstrates basic SQL Server operations using a simple
School Database.
The database contains two main tables: students and teacher.

The project covers table creation, inserting data, retrieving records,
filtering, aggregate functions, grouping, updating, deleting, altering
tables, constraints, and SQL Server date functions.

Database

USE school_db;

1. Students Table

The students table stores student information.

CREATE TABLE students (
    std_id INT,
    std_name VARCHAR(20),
    email VARCHAR(20),
    age INT,
    score INT
);

Student Columns

Column     Data Type     Description

std_id     INT           Student ID
std_name   VARCHAR(20)   Student name
email      VARCHAR(20)   Student email
age        INT           Student age
score      INT           Student score

2. Teacher Table

The teacher table includes several SQL constraints.

CREATE TABLE teacher (
    t_id INT PRIMARY KEY,
    teach_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 16),
    salary INT DEFAULT 0
);

Constraints demonstrated:

PRIMARY KEY -- uniquely identifies each teacher.

NOT NULL -- requires a teacher name.

UNIQUE -- prevents duplicate teacher emails.

CHECK -- requires the teacher's age to be at least 16.

DEFAULT -- assigns 0 when no salary is supplied.

3. Insert Data

Example student records:

INSERT INTO students (std_id, std_name, email, age, score)
VALUES
(2, 'Abba', 'abba@email.com', 10, 90),
(3, 'ali', 'ali@email.com', 15, 80),
(4, 'Abdi', 'abdi@email.com', 16, 90),
(5, 'Amina', 'amina@email.com', 17, 90),
(6, 'Abdikadir', 'abdikadir@email.com', 19, 90);

Example teacher record:

INSERT INTO teacher (t_id, teach_name, email, age, salary)
VALUES (1, 'Ali', 'ali@email.com', 18, 2);

4. SELECT Queries

Display all students and teachers:

SELECT * FROM students;
SELECT * FROM teacher;

Select specific student columns:

SELECT std_name, score
FROM students;

Filter students younger than 16:

SELECT *
FROM students
WHERE age < 16;

5. Aggregate Functions

The project uses common SQL aggregate functions:

SELECT COUNT(*) AS total_students
FROM students;

SELECT MIN(score) AS min_student
FROM students;

SELECT MAX(score) AS max_student
FROM students;

SELECT SUM(score) AS sum_student
FROM students;

COUNT() counts records.

MIN() returns the minimum value.

MAX() returns the maximum value.

SUM() calculates the total.

6. GROUP BY and HAVING

Count students by age:

SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;

Show only age groups containing more than two students:

SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 2;

7. UPDATE and DELETE

Update a student's score:

UPDATE students
SET score = 90
WHERE std_id = 3;

Delete a student:

DELETE FROM students
WHERE std_id = 2;

Always use an appropriate WHERE condition with UPDATE and DELETE
when you do not intend to affect every row.

8. ALTER TABLE

Add a phone column:

ALTER TABLE students
ADD phone VARCHAR(20);

Add an address column:

ALTER TABLE students
ADD address VARCHAR(20);

Add a unique constraint to student emails:

ALTER TABLE students
ADD CONSTRAINT UQ_students_email
UNIQUE (email);

Change the size of the student name column:

ALTER TABLE students
ALTER COLUMN std_name VARCHAR(100);

9. SQL Server Date Functions

Get the current date and time:

SELECT GETDATE() AS currentDate;

Return only the current date:

SELECT CAST(GETDATE() AS DATE) AS currentDate;

Add days to a date:

SELECT DATEADD(DAY, 10, '2026-01-11');

Calculate the difference between two dates:

SELECT DATEDIFF(DAY, '2026-01-11', '2026-01-21');

Topics Covered

CREATE TABLE • INSERT INTO • SELECT • WHERE • COUNT • MIN •
MAX • SUM • GROUP BY • HAVING • UPDATE • DELETE •
ALTER TABLE • PRIMARY KEY • NOT NULL • UNIQUE • CHECK •
DEFAULT • GETDATE • CAST • DATEADD • DATEDIFF

Conclusion

This project provides practical examples of fundamental SQL Server
commands used to create and manage a simple school database. It is
suitable for practicing CRUD operations, constraints, aggregate
functions, grouping, table modification, and date functions.

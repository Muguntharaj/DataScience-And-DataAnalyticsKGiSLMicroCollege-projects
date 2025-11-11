-- 1 Write an SQL query to create a table Students with columns id (INT), name (VARCHAR(50)), and marks (INT).

create database reinforcement;
use reinforcement;
create table Students (columns_id int ,name varchar (50),marks int);

-- 2 Insert a record into the Students table with values (1, 'Rahul', 85).

select Students;
insert into Students(columns_id,name,marks) values (1,'Rahul',85);

-- 3 Write a query to update marks of student with id = 1 to 90.
select Students;
UPDATE Students SET marks = 90 WHERE columns_id = 1;


-- 4 Display all students whose marks are greater than 75.
select * from Students where marks > 75;

-- 5 Write a query to find the average marks of all students.

Select avg(marks) from Students;

-- 6 Retrieve the second highest mark from the students table.

SELECT MAX(marks) FROM Students WHERE marks < ( SELECT MAX(marks) FROM Students);

-- 7 Write a query to display the current date and time using MySQL function.

select now();

-- 8 Write a query using LEFT JOIN between Students and Courses tables on id.

-- Before that we need to create the course table 
CREATE TABLE Courses (id INT,course_name VARCHAR(100));

insert into Courses(id,course_name)values(1,'DADS');

SELECT Students.columns_id, Students.name, Students.marks, Courses.course_name FROM Students LEFT JOIN Courses ON Students.columns_id = Courses.id;

-- 9 Create a view named Top Students that shows students with marks greater than 80.

CREATE VIEW Top_Students AS SELECT * FROM Students WHERE marks > 80;

-- 10 Write a query to create a trigger that automatically sets marks to 0 if a negative value is inserted.

DELIMITER //

CREATE TRIGGER before_insertion_of_negativeMarks BEFORE INSERT ON Students FOR EACH ROW
BEGIN
    IF NEW.marks < 0 THEN
        SET NEW.marks = 0;
    END IF;
END;
//
DELIMITER ;











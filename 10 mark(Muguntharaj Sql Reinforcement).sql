create database reinforcement10Mark;
use reinforcement10Mark;
create table Students (Student_id int,name varchar(255),dept_id int ,Marks int);
insert into Students (name,dept_id,Marks)values('Rahul',101,85),('Priya',102,92),('Karthik',101,76),('Meena',103,88);
create table Department(dept_id int,dept_name varchar(255));
insert into Department(dept_id,dept_name)values(101,'Computer Sci'),(102,'IT'),(103,'ECE');

-- Use an aggregate function to display the average marks of students in each department.

SELECT  d.dept_name,AVG(s.Marks) AS average_marks FROM  Students s JOIN Department d ON s.dept_id = d.dept_id GROUP BY d.dept_name;

-- Write a query using a JOIN to display student names along with their department names.

SELECT s.name AS student_name,d.dept_name FROM Students s JOIN Department d ON s.dept_id = d.dept_id;

-- Write a subquery to find students who scored more than the average marks of all students.

SELECT  name,marks FROM  Students WHERE marks > (SELECT AVG(marks) FROM Students);

-- Create a stored procedure named GetTopStudents that returns all students with marks greater than 85.

DELIMITER //
CREATE PROCEDURE GetTopStudents()
BEGIN
    SELECT * FROM Students WHERE Marks > 85;
END //
DELIMITER ;
 call GetTopStudents();




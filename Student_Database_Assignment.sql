-- 1.1 Create a database named edu_institute.-- 
CREATE DATABASE edu_institute ;   

-- select database edu_institute
USE edu_institute ;

-- create a table named students with the structure: student_id,name, age, gender, enrollment_date, program 
CREATE TABLE students (  student_id INT PRIMARY KEY,  name VARCHAR(50) NOT NULL,  age INT,  gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),  enrollment_date DATE,  program VARCHAR(50)); 


-- Insert data records
SELECT * FROM edu_institute.students;
INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES (01, 'Phanice Nekesa ', 22, 'F', '2024-01-24', 'Data Science'),
(02, 'Meshack kimutai', 22, 'F', '2024-01-24', 'Software Engineering'),
(03, 'Maureen Ougo ', 24, 'F', '2024-01-24', 'Computer Science'),
(04, 'Sheila Lekishon ', 24, 'F', '2024-01-24', 'Information Technology'),
(05, 'Victor Ochieng', 21, 'M', '2024-03-24', 'Data Science');



-- select all columns for all students in the "Data Science"
SELECT * FROM students WHERE program = 'Data Science';

-- Display total number of students
SELECT COUNT(*) AS Total_Students FROM students;

-- function to display the current date
SELECT CURRENT_DATE() AS "Today's Date"; 

-- Query to select the student names and their enrolment dates, but display the name in uppercase
SELECT UPPER(name) AS Name, enrollment_date FROM students;

-- Write a query to count the number of students in each program and display the
-- results in descending order of count. Name the count column as Number of
-- Students. (1 Mark)

SELECT program, COUNT(*) AS 'Number of Students'
FROM students  GROUP BY program ORDER BY COUNT(*) DESC;

-- Write a query to find the youngest student's name and age
SELECT name, age FROM students ORDER BY age ASC LIMIT 1;



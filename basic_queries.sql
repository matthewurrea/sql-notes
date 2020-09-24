--Getting specific information from the database

--Select every column from table
SELECT * 
FROM student; 

--Select all names from student table
SELECT name
FROM student; 

--Select all names and majors frome student table
SELECT name, major
FROM student;

--You can prepend the column attributes with specific table references 
SELECT student.name, student.major
FROM student; 

--Order information in alphbetical order
SELECT student.name, student.major
FROM student
ORDER BY name;

--Same query but in decending order
SELECT student.name, student.major
FROM student
ORDER BY name DESC;

--Ordered by decending student_id
SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;

--Ordered by ascending student_id
SELECT *
FROM student
ORDER BY student_id ASC;

--Ordered by major first then student_id; ascending
SELECT * 
FROM student
ORDER BY major, student_id ASC; 

--limit the number results
SELECT *
FROM student
LIMIT 2; 

--select all student data, order by student_id in decending order, and only give back 2 results
SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;

--filtering
SELECT * 
FROM student
WHERE major = 'Biology';

SELECT * 
FROM student
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT * 
FROM student 
WHERE major = 'Chemistry' OR name = 'Kate';


--more complex WHERE statements 

--Comparison Operators 
--<, >, <=, >=, =, <>, AND, OR

--select all students where major is not equal to chemistry 
SELECT * 
FROM student 
WHERE major <> 'Chemistry'

--select all students where student_id is less than 3
SELECT * 
FROM student 
WHERE student_id < 3;

--select all students where student_id is less than or equal to 3 and name is not equal to 'Jack'
SELECT * 
FROM student
WHERE student_id <= 3 AND name <> 'Jack';

--IN keyword

--select all rows that have Claire Kate and Mike as name
SELECT * 
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

--select all students that have the major biology and chemistry
SELECT * 
FROM student
WHERE major IN ('Biology', Chemistry); 

--select all students that have the major biology and chemistry and a student_id of greater than 2
SELECT * 
FROM student
WHERE major IN ('Biology', Chemistry) AND student_id > 2;


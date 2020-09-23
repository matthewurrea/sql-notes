
--Creates a student table and defines attributes.
--Equivalency between 'student_id INT PRIMARY KEY' and 'PRIMARY KEY (student_id)' should be noted. 
CREATE TABLE student (
    student_id INT,
    name VARCHAR (20),
    major VARCHAR (20),
    PRIMARY KEY (student_id)
     
);

--Gives more information on table called.  
DESCRIBE student;

--Droping or Removing a table from the database.
DROP TABLE student;

--Altering Tables in the database.
ALTER TABLE student ADD gpa DECIMAL(3,2);

--Altering and Droping a table column in the database.
ALTER TABLE student DROP COLUMN gpa;


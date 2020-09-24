CREATE TABLE student (
    student_id INT,
    name VARCHAR (20),
    major VARCHAR (20),
    PRIMARY KEY (student_id)     
);
--select all student from the student table
SELECT * FROM student; 

--insert values into rows
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');

--specifiying attributes to insert data into 
--situation where student has no major
INSERT INTO student VALUES (3, 'Clair');

--NOTE: You are unable to instert duplicate values

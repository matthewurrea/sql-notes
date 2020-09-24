DROP TABLE student; 

CREATE TABLE student (
    student_id INT,
    name VARCHAR (20),
    major VARCHAR (20), 
    PRIMARY KEY (student_id)     
);

INSERT INTO student VALUES (1, 'Jack', 'Biology');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');
INSERT INTO student VALUES (3, 'Clair', 'Chemisty');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO sutdent VALUES (5, 'Mike', 'Computer Science');

SELECT * FROM student;

--update

--UPDATE 'bio' major for students that have 'biology' as Major 
UPDATE student 
SET major = 'Bio'
WHERE major = 'Biology';

--UPDATE 'Comp Sci' major for students that have 'Computer Science' as Major 
UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science'

--UPDATE 'Comp Sci' major by student_id
UPDATE student 
SET major = 'Comp Sci'
WHERE student_id = 4;

--if major is bio or chemistry set to Biochemistry, OR logic
UPDATE student 
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemisty';

--change mulitple columns within the same query 
UPDATE student 
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

--dropping the WHERE effects all the rows
UPDATE student 
SET major = 'undecided';

--DELETE

--Deleting rows from a table

SELECT * FROM student

--delete by student_id
DELETE FROM student
WHERE student_id = 5;

--delete by name and major
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

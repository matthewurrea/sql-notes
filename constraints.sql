--Constraints 

-resets tables and inserts student values and attributes
DROP TABLE student; 

CREATE TABLE student (
    student_id INT,
    name VARCHAR (20) NOT NULL, --'NOT NULL' column must have a value and cannot be NULL
    major VARCHAR (20) UNIQUE,  --'UNIQUE' major field must be a unique for each row in the table  
    PRIMARY KEY (student_id)     
);

SELECT * FROM student;

INSERT INTO student VALUES (1, 'Jack', 'Biology');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');
INSERT INTO student VALUES (3, 'Kate', 'Chemisty');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO sutdent VALUES (5, 'Mike', 'Computer Science');


--NOT NULL & UNIQUE example

--'NOT NULL' column must have a value and cannot be NULL
--'UNIQUE' major field must be a unique for each row in the table
CREATE TABLE student (
    student_id INT,
    name VARCHAR (20) NOT NULL, 
    major VARCHAR (20) UNIQUE,    
    PRIMARY KEY (student_id)     
);

SELECT * FROM student;

INSERT INTO student VALUES (1, 'Jack', 'Biology');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');

--will throw error due to name being set at NOT NULL 
INSERT INTO student VALUES (3, 'NULL', 'Chemisty');

--will throw error due to Biology being the major for row 1 column 3
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO sutdent VALUES (5, 'Mike', 'Computer Science');

--NOTE: PRIMARY KEYS are NOT NULL and UNIQUE 


--DEFAULT example

--DEFAULT; sets default value if no value is provided 
CREATE TABLE student (
    student_id INT,
    name VARCHAR (20), 
    major VARCHAR (20) DEFAULT 'undecided',  
    PRIMARY KEY (student_id)     
);
SELECT * FROM student;

INSERT INTO student(student_id, name) VALUES (1, 'Jack');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');
INSERT INTO student VALUES (3, 'Clair', 'Chemisty');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO sutdent VALUES (5, 'Mike', 'Computer Science');


--have the database instert student_id for you
--AUTO_INCREMENT, have the database automatically increment the value

DROP TABLE student; 

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR (20),
    major VARCHAR (20), 
    PRIMARY KEY (student_id)     
);

SELECT * FROM student;

INSERT INTO student(name, major) VALUES ('Jack', 'Biology');
INSERT INTO student(name, major) VALUES ('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES ('Clair', 'Chemisty');
INSERT INTO student(name, major) VALUES ('Jack', 'Biology');
INSERT INTO student(name, major) VALUES ('Mike', 'Computer Science');

--Basic query questions, attempts, and answers

--Find all employees.

--ATTEMPT
SELECT employee.emp_id, employee.first_name, employee.last_name 
FROM employee;

--ANSWER
SELECT *
FROM employee;


--Find all clients.

--ATTEMPT
SELECT *
FROM client;

--ANSWER
SELECT *
FROM client;

--Find all employees ordered by salary.

--ATTEMPT
SELECT * 
FROM employee 
ORDER BY salary DESC;

--ANSWER
SELECT * 
FROM employee 
ORDER BY salary DESC;

--Find all employees ordered by sex then name.

--ATTEMPT
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

--ANSWER
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

--Find the first 5 employees in the table.

--ATTEMPT
SELECT * 
FROM employee 
LIMIT 5;

--ANSWER
SELECT * 
FROM employee 
LIMIT 5; 

--Find the first and last names of all employees.

--ATTEMPT
SELECT first_name, last_name 
FROM employee;

--ANSWER
SELECT first_name, last_name 
FROM employee;

--Find the forename and surenames of all employees

--ATTEMPT
SELECT employee.last_name, employee.first_name,
FROM employee;

--ANSWER
-- AS renames/displays colomns as different names other than what they are refered to in the database
SELECT first_name AS forenamem last_name AS surename 
FROM employee;

--Find out all the different genders
--DISTINCT, find out all the unique values stored in a column 
SELECT DISTINCT sex 
FROM employee;


--SQL functions

--Find the number of employees.
SELECT COUNT(emp_id)
FROM employee;

--Find the number of supervisors.
SELECT COUNT(super_id)
FROM employee;

--Find the number of female employees born after 1970.
SELECT COUNT(sex)
FROM employee
WHERE sex = 'F' AND birth_day > 1970-01-01;

--Find the average of all employee's salaries.
SELECT AVG(salary)
FROM employee;

--Find the average of all the employee's salaries who are male.
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

--Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

--Aggregation
--Find out how many males and females there are. 
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex; 

--Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM  works_with
GROUP BY emp_id;

--Find the money each client spent with the branch 
SELECT SUM(total_sales), client_id
FROM  works_with
GROUP BY client_id;


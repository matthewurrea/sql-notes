--JOINS
--JOIN is used to combine rows on two or more tables based on a related column between them

--adds new branch value for JOINS to work 
INSERT INTO branch VALUES (4, 'Buffalo', NULL, NULL);

--INNER JOIN
-- Find all branches and the names of their managers 
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

--LEFT JOIN
--all emp_id's will be included in result
--you get all the rows from the left table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

--RIGHT JOIN
--all of the branch_names will be displayed and included in result 
--you get all the rows from the right table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

--FULL OUTER JOIN
--Basically a left and right JOIN combined.
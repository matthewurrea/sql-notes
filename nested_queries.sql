--NESTED QUERIES 
--Using mulitple SELECT statements in order to get a specific peice of information

-- Find names of all employees who have 
-- sold over 30,000 to a single client

--gets first name and last name of employees
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
--gets emp_id's of employees who sold more than 30000 to a single client
    SELECT works_with.emp_id
    FROM works_with
WHERE works_with.total_sales > 30000
);



-- Find all clients who are handled by the branch 
-- that Michael Scott manages
-- Assume you know Michael's ID

SELECT client.client_name
FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id 
    FROM branch
    WHERE mgr_id = 102
);


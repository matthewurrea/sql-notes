--Unions
--SQL operator that combines results of multiple SELECT statments into one.

--Find a list of employee and branch names
SELECT first_name AS Company_Names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

--RULE1: Each SELECT statment has to have the same number of columns in a UNION statement  
--RULE2: Must be the same Data Type. 


--Find a list of all clients & branch suppliers' names
SELECT client_name, client.branch_id 
FROM client 
UNION SELECT supplier_name, client.branch_id 
FROM branch_supplier;

--Find a list of all money spent or earned by the company
SELECT salary 
FROM employee
UNION 
SELECT total_sales
FROM works_with;


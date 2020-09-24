--ON DELETE SET NULL & ON DELETE CASCADE
--deleting attributes from the database 
--when they have foreign keys connected to them

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  -- if the employee id is deleted the manager id will be set to NULL
  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- ON DELETE SET NULL
-- if we were to delete an employee from the database
-- all FOREIGN KEYS associated with them would be set to NULL


CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  -- if the branch.branch id is deleted all branch_supplier.branch_id would be removed from the database 
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

-- ON DELETE CASCADE
-- if we were to delete an employee 
-- all FOREIGN KEYS associtated to them would be removed
-- from the DATABASE


-- Use ON DELETE SET NULL on foreign keys as their values can be NULL
-- Use ON DELETE CASCADE on primary keys as primary keys cannot be NULL
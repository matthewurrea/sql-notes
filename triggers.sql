--TRIGGERS 
--A block of SQL code that will define a certain action that should happen when a certain action is performed on the database

CREATE TABLE trigger_test (
    message VARCHAR(100)
);

--open Command Line Client
--if on Terminal use mysql -u root -p to sign into server
--use giraffe

--any time values are added to  employee table the message 
--'added new employee' will be added to the trigger test table
DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER ;

-- ; = DELIMITER
-- you have to change the delimiter to get triggers to work 

--displays first name of the employee in the trigger test that was inserted
DELIMITER $$
CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

--More complex trigger
--displays sex of 'added employee' and if no gender displays other
DELIMITER $$
    TRIGGER my trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female employee');
        ELSE
            INSERT INTO trigger_test VALUES('added other employee');
        END IF;
    END$$
DELIMITER ; 

--TRIGGERS can be CREATED for BEFORE/AFTER, UPDATE/DELETE/INSERT.
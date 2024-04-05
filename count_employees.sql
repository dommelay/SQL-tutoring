-- The data for the number employed at several famous IT companies is maintained in the COMPANY table. Write a query to print the IDs of the companies that have more than 10,000 employees, in ascending order of ID

-- Input Format
-- COMPANY
-- Name - Type - Description
-- ID - Integer - A company Id in the inclusive range [1, 1000]. This is the primary key.
-- NAME - String - A company name. This field contains between 1 and 100 characters (inclusive).
-- EMPLOYEES - Integer - The total number of employees in the company

-- Output Format
-- The result should contain the IDs of all the companies that have more than 10,000 employees, in ascending order in the following format:
-- COMPANY, ID
CREATE DATABASE IF NOT EXISTS count_employees_db;

USE count_employees_db;

CREATE TABLE IF NOT EXISTS COMPANY (
    ID INTEGER PRIMARY KEY,
    NAME VARCHAR(100),
    EMPLOYEES INTEGER
);

INSERT INTO COMPANY (ID, NAME, EMPLOYEES) VALUES
(1, 'Adobe', 28085),
(2, 'Flipkart', 35543),
(3, 'Amazon', 1089),
(4, 'Paytm', 9982),
(5, 'BookMyShow', 5589);

SELECT ID, NAME
FROM COMPANY
WHERE EMPLOYEES > 10000
ORDER BY ID ASC;
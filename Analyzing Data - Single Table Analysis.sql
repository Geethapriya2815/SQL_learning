-- 1. Create Database
CREATE DATABASE IF NOT EXISTS example_db;

-- 2. Create Table
USE example_db;

CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- 3. Inserting Data into Table
INSERT INTO employees (first_name, last_name, email, hire_date, salary)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '2022-01-15', 50000.00),
    ('Jane', 'Smith', 'jane.smith@example.com', '2022-02-10', 60000.00),
    ('Jim', 'Brown', 'jim.brown@example.com', '2022-03-20', 70000.00);

-- 4. Selecting All Fields from the Table
SELECT * FROM employees;

-- 5. Selecting Specific Columns
SELECT first_name, last_name, email FROM employees;

-- 6. Selecting Distinct Values from a Column
SELECT DISTINCT last_name FROM employees;

-- 7. Filtering Data with WHERE Clause and Equals to Operator
SELECT * FROM employees WHERE salary = 60000.00;

-- 8. Filtering Data with WHERE Clause and LESS THAN Operator
SELECT * FROM employees WHERE salary < 70000.00;

-- 9. Filtering Data with WHERE Clause and GREATER THAN Operator
SELECT * FROM employees WHERE salary > 50000.00;

-- 10. Using WHERE with AND Operator
SELECT * FROM employees WHERE salary > 50000.00 AND hire_date > '2022-01-01';

-- 11. Using WHERE with OR Operator
SELECT * FROM employees WHERE salary > 60000.00 OR last_name = 'Brown';

-- 12. Using WHERE with IN Operator
SELECT * FROM employees WHERE first_name IN ('John', 'Jim');

-- 13. Using WHERE and LIKE Operator (Wildcards)
SELECT * FROM employees WHERE first_name LIKE 'J%';

-- 14. Using WHERE and LIKE with Specific Pattern
SELECT * FROM employees WHERE email LIKE '%example.com';

-- 15. Using SUM on a Single Field
SELECT SUM(salary) AS total_salary FROM employees;

-- 16. Performing SUM with WHERE
SELECT SUM(salary) AS total_salary FROM employees WHERE hire_date > '2022-01-01';

-- 17. Using COUNT Aggregation
SELECT COUNT(*) AS total_employees FROM employees;

-- 18. Counting Values in Complex Situations
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM employees;

-- 19. Averaging Values with AVG
SELECT AVG(salary) AS average_salary FROM employees;

-- 20. MAX and MIN Aggregations
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employees;

-- 21. Using Alias for Readability
SELECT first_name AS "Employee First Name", last_name AS "Employee Last Name" FROM employees;

-- 22. Combining Aggregations and Aliases
SELECT 
    COUNT(*) AS total_employees,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary
FROM employees;

-- 23. Using GROUP BY for Aggregation
SELECT last_name, COUNT(*) AS count FROM employees GROUP BY last_name;

-- 24. Ordering Results by Aggregated Values
SELECT last_name, SUM(salary) AS total_salary
FROM employees
GROUP BY last_name
ORDER BY total_salary DESC;

-- 1. Create Database
CREATE DATABASE IF NOT EXISTS example_db;

-- 2. Create Table
USE example_db;

CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE
);

-- 3. Insert Data
INSERT INTO employees (first_name, last_name, email, hire_date)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '2025-01-15'),
    ('Jane', 'Smith', 'jane.smith@example.com', '2025-02-10'),
    ('Jim', 'Brown', 'jim.brown@example.com', '2025-03-20');

-- 4. Read Data
SELECT * FROM employees;

-- 5. Update Data
UPDATE employees
SET email = 'john.doe_updated@example.com'
WHERE id = 1;

-- 6. Delete Data
DELETE FROM employees
WHERE id = 3;

-- 7. Drop Table (if you need to remove it later)
DROP TABLE IF EXISTS employees;

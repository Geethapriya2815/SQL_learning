-- Introduction to SQL
-- Creating a sample database and table for learning purposes

CREATE DATABASE LearningSQL;
USE LearningSQL;

-- Creating a sample table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50)
);

-- Inserting sample data
INSERT INTO Students (StudentID, Name, Age, Course) VALUES
(1, 'Alice', 22, 'Data Science'),
(2, 'Bob', 21, 'Software Engineering'),
(3, 'Charlie', 23, 'Cyber Security');

-- Basic SELECT Query
SELECT * FROM Students;

-- Filtering Data
SELECT * FROM Students WHERE Age > 21;

-- Updating Data
UPDATE Students SET Course = 'AI & ML' WHERE StudentID = 1;

-- Deleting Data
DELETE FROM Students WHERE StudentID = 3;

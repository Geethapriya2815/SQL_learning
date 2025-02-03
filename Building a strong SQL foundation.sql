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

-- Understanding RDBMS
-- Creating another table to demonstrate relationships
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration INT
);

-- Inserting data into Courses table
INSERT INTO Courses (CourseID, CourseName, Duration) VALUES
(101, 'Data Science', 6),
(102, 'Software Engineering', 8),
(103, 'Cyber Security', 5);

-- Establishing Foreign Key Relationship
ALTER TABLE Students ADD COLUMN CourseID INT;
ALTER TABLE Students ADD FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);

-- Joining Tables
SELECT Students.Name, Courses.CourseName, Courses.Duration
FROM Students
JOIN Courses ON Students.CourseID = Courses.CourseID;

-- Difference between Database and Spreadsheet
-- Demonstrating aggregation functions
SELECT Course, COUNT(*) AS StudentCount FROM Students GROUP BY Course;

-- Understanding Relational Database Concepts
-- Demonstrating Normalization
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR(50),
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

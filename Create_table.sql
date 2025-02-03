DROP TABLE IF EXISTS Genz;

-- Create the table
CREATE TABLE Genz (
    Respondent_ID INT PRIMARY KEY,
    Industry VARCHAR(150),
    Factors_Influencing_Career_Choices VARCHAR(150),
    Work_Environment_Preference VARCHAR(150),
    Financial_Goals VARCHAR(150)
);

-- Insert data into the table
INSERT INTO Genz (Respondent_ID, Industry, Factors_Influencing_Career_Choices, Work_Environment_Preference, Financial_Goals)
VALUES 
(1, 'Technology', 'Work-life balance', 'Remote', 'High Salary'),
(2, 'Healthcare', 'High Salary', 'Hybrid', 'High Salary'),
(3, 'Finance', 'Growth Opportunities', 'In-office', 'Comprehensive Benefits'),
(4, 'Creative Arts', 'Social Impact', 'Remote', 'High Salary'),
(5, 'Technology', 'Work-life balance', 'Hybrid', 'Comprehensive Benefits'),
(6, 'Education', 'Job Security', 'Remote', 'High Salary'),
(7, 'Technology', 'High Salary', 'In-office', 'Comprehensive Benefits'),
(8, 'Healthcare', 'Growth Opportunities', 'Remote', 'High Salary'),
(9, 'Creative Arts', 'Social Impact', 'Hybrid', 'High Salary'),
(10, 'Finance', 'Job Security', 'Remote', 'Comprehensive Benefits'),
(11, 'Technology', 'Work-life balance', 'Remote', 'High Salary');

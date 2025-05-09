-- Create the database
CREATE DATABASE School;

-- Use the database
USE School;

-- 1. CREATE Command: Create the STUDENT table
CREATE TABLE STUDENT (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks FLOAT,
    Grade CHAR(1)
);

-- Insert some sample data
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (1, 'Albin', 85.5, 'A');
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (2, 'Thomas', 72.0, 'B');
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (3, 'Akshay', 90.0, 'A');

-- 2. SELECT Command: Display the table
SELECT * FROM STUDENT;

-- 3. ALTER Command: Add a new column 'Contact'
ALTER TABLE STUDENT ADD Contact VARCHAR(15);

-- 4. ALTER Command: Drop the 'Grade' column
ALTER TABLE STUDENT DROP COLUMN Grade;

-- 5. RENAME Command: Rename the table to CLASSTEN
ALTER TABLE STUDENT RENAME TO CLASSTEN;

-- 6. TRUNCATE Command: Delete all rows from the table
TRUNCATE TABLE CLASSTEN;

-- 7. DROP Command: Delete the table from the database
DROP TABLE CLASSTEN;

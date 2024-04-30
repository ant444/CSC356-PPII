-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- Filename: getexp2d.sql

-- File: getexp2d.sql
PROMPT The following script displays all expenses on a given date:
ACCEPT given_date PROMPT 'Enter Expense Date (DD-MMM-YY): '

SET VERIFY OFF
COLUMN ExpNum FORMAT 999999
COLUMN ExpDate FORMAT A10
COLUMN Descrip FORMAT A30
COLUMN ExpenseAmount FORMAT $999,999.99

PROMPT The following expenses occurred on &given_date

-- Display all expenses (with details) incurred on the given date and calculate total expense
SELECT ExpDet.ExpNum, ExpMast.ExpDate, ExpDet.Descrip, ExpDet.Amt AS TotalAmount
FROM ExpDet
JOIN ExpMast ON ExpDet.ExpNum = ExpMast.ExpNum
WHERE ExpMast.ExpDate = &given_date
UNION ALL
SELECT NULL, NULL, 'Total Amount:', SUM(Amt) AS TotalAmount
FROM ExpDet
JOIN ExpMast ON ExpDet.ExpNum = ExpMast.ExpNum
WHERE ExpMast.ExpDate = &given_date;

PROMPT PL/SQL procedure successfully completed.
SET VERIFY ON


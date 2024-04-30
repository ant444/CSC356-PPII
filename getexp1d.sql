-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- Filename: getexp1d.sql
PROMPT The following script displays all expenses on a given date:
ACCEPT given_date PROMPT 'Enter Date (DD-MON-YY): '

SET VERIFY OFF

PROMPT The following expenses occurred on &given_date
SELECT
    LPAD(ExpNum, 5) AS Exp#,
    TO_CHAR(ExpDate, 'DD-Mon-YY') AS ExpDate,
    LPAD('$' || TO_CHAR(CashAmt, '999.99'), 12) AS ExpAmount,
    LPAD(s.Name, 9) AS Store -- s.Name is the store name from the Store table
FROM ExpMast e
JOIN Store s ON e.StoreCode = s.Code
WHERE e.ExpDate = TO_DATE('&given_date', 'DD-MON-YY')
UNION ALL
SELECT NULL, NULL, NULL, 'Total Expense Amount: $' || TO_CHAR(SUM(CashAmt), '999.99')
FROM ExpMast
WHERE ExpDate = TO_DATE('&given_date', 'DD-MON-YY');

PROMPT PL/SQL procedure successfully completed.
SET VERIFY ON


 

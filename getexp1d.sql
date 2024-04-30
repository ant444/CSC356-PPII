-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- Filename: getexp1d.sql

 ACCEPT given_date PROMPT 'Enter Date (YYYY-MM-DD): '
 
 -- Display all expenses (without details) incurred on the given date and calculate total expense
 SELECT ExpNum, ExpDate, CashAmt AS TotalAmount
 FROM ExpMast
 WHERE ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
 UNION ALL
 SELECT ExpByCC.ExpNum, ExpMast.ExpDate, Amt AS TotalAmount
 FROM ExpByCC
 JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
 WHERE ExpMast.ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
 UNION ALL
 SELECT NULL, NULL, SUM(TotalAmount) AS TotalAmount
 FROM (
     SELECT CashAmt AS TotalAmount
     FROM ExpMast
     WHERE ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
     UNION ALL
     SELECT Amt AS TotalAmount
     FROM ExpByCC
     JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
     WHERE ExpMast.ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
 );
 

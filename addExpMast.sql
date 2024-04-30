-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- File: addExpMast.sql
  
  ACCEPT ExpDate PROMPT 'Enter Expense Date (DD-MON-YY): '
  ACCEPT CashAmt PROMPT 'Enter	Cash Amount Spent: $'
  ACCEPT StoreCode PROMPT 'Enter the Store Code: '
  
  INSERT INTO ExpMast (ExpDate, CashAmt, StoreCode)
  VALUES ('&ExpDate', '&CashAmt', '&StoreCode')	;
  

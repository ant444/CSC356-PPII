-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- File: addexpPay.sql

ACCEPT exp_number PROMPT 'Enter Expense Number: '

-- Display existing payment data for the given expense number
SELECT * FROM ExpByCC WHERE ExpNumber = '&exp_number';

-- Prompt for payment info
ACCEPT cc_number PROMPT 'Enter Credit Card Number: '
ACCEPT payment_date PROMPT 'Enter Payment Date (DD-MON-YY): '
ACCEPT amount PROMPT 'Enter Amount: '

INSERT INTO ExpByCC (ExpNumber, CCNumber, PaymentDate, Amount)
VALUES ('&exp_number', '&cc_number','&payment_date', '&amount');

COMMIT;

-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- Filename: getexp2d.sql

 1 SET SERVEROUTPUT ON
 2 
 3 SET VERIFY OFF
 4 
 5 PROMPT The following script displays details of all expenses on a given date:
 6 
 7 PROMPT Enter Expense Date: (DD-MON-YY)
 8 ACCEPT v_exp_date DATE
 9 
10 PROMPT The following expenses occurred on &v_exp_date
11 DECLARE
12  --  v_exp_date DATE;
13   v_total_expense NUMBER := 0;
14 
15   -- Cursor declaration to fetch expenses
16   CURSOR expense_cursor IS
17     SELECT em.expnum, em.expdate, em.cashamt, s.name AS store_name
18     FROM ExpMast em
19     JOIN Store s ON em.storecode = s.code
20     WHERE em.expdate = '&v_exp_date';
21 BEGIN
22 
23   -- Header for expense details
24   DBMS_OUTPUT.PUT_LINE('Exp#   Exp Date        Exp Amount         Store');
25   DBMS_OUTPUT.PUT_LINE('------ --------------- ------------------ ---------');
26 
27   -- Loop through expenses using cursor
28   FOR expense_rec IN expense_cursor LOOP
29     DBMS_OUTPUT.PUT_LINE(expense_rec.expnum || '	 ' || TO_CHAR(expense_rec.expdate, 'DD-MON-YY') || '         $' || TO_CHAR(expense_rec.cashamt, '999.99') || '       >
30 
31     -- Display cash payment
32     DBMS_OUTPUT.PUT_LINE('Paid in Cash: $' || TO_CHAR(expense_rec.cashamt, '999.99'));
33 
34     -- Calculate total expense
35     v_total_expense := v_total_expense + expense_rec.cashamt;
36 
37     -- Cursor for fetching credit card payments
38     FOR cc_payment IN (
39 	 SELECT ecc.ccnum, ecc.amt
40 	 FROM ExpByCC ecc
41 	 WHERE ecc.expnum = expense_rec.expnum
42     ) LOOP
43 	 DBMS_OUTPUT.PUT_LINE('Paid by Credit Card (CCNUM: ' || cc_payment.ccnum || '): $' || TO_CHAR(cc_payment.amt, '999.99'));
44 	 -- Add credit card amount to total expense
45 	 v_total_expense := v_total_expense + cc_payment.amt;
46     END LOOP;
47 
48     -- Display total expense
49     DBMS_OUTPUT.PUT_LINE('Total Expense Amount: $' || TO_CHAR(v_total_expense, '999.99'));
50   END LOOP;
51 
52 END;
53 /
54 
55 SET VERIFY ON
56 


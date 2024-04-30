-- File: getexp1d.sql
 1 ACCEPT given_date PROMPT 'Enter Date (YYYY-MM-DD): '
 2 
 3 -- Display all expenses (without details) incurred on the given date and calculate total expense
 4 SELECT ExpNum, ExpDate, CashAmt AS TotalAmount
 5 FROM ExpMast
 6 WHERE ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
 7 UNION ALL
 8 SELECT ExpByCC.ExpNum, ExpMast.ExpDate, Amt AS TotalAmount
 9 FROM ExpByCC
10 JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
11 WHERE ExpMast.ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
12 UNION ALL
13 SELECT NULL, NULL, SUM(TotalAmount) AS TotalAmount
14 FROM (
15     SELECT CashAmt AS TotalAmount
16     FROM ExpMast
17     WHERE ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
18     UNION ALL
19     SELECT Amt AS TotalAmount
20     FROM ExpByCC
21     JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
22     WHERE ExpMast.ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD')
23 );
24 

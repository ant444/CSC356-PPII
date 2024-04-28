 -- File: getexpcc.sql
 
 ACCEPT start_date PROMPT 'Enter Start Date (YYYY-MM-DD): '
 ACCEPT end_date PROMPT 'Enter End Date (YYYY-MM-DD): '
 ACCEPT cc_number PROMPT 'Enter Credit Card Number: '
     
 -- Display all expenses (without details) incurred between two user-given dates f>
 SELECT ExpMast.ExpNum, ExpMast.ExpDate, ExpByCC.ccNum, ExpByCC.Amt AS TotalAmount
 FROM ExpByCC
 JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
 WHERE ExpByCC.ccNum = '&cc_number'
   AND ExpMast.ExpDate BETWEEN TO_DATE('&start_date', 'YYYY-MM-DD') AND TO_DATE('&end_date', 'YYYY-MM-DD')
 UNION ALL
 SELECT NULL, NULL, NULL, SUM(Amt) AS TotalAmount
 FROM ExpByCC
 JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
 WHERE ExpByCC.ccNum = '&cc_number'
   AND ExpMast.ExpDate BETWEEN TO_DATE('&start_date', 'YYYY-MM-DD') AND TO_DATE('&end_date', 'YYYY-MM-DD');

 -- File: getexpcc.sql
 
 ACCEPT start_date PROMPT 'Enter Start Date (DD-MON-YY): '
 ACCEPT end_date PROMPT 'Enter End Date (DD-MON-YY): '
 ACCEPT cc_number PROMPT 'Enter Credit Card Number: '
     
 -- Display all expenses (without details) incurred between two user-given dates f>
 SELECT ExpMast.ExpNum, ExpMast.ExpDate, ExpByCC.ccNum, ExpByCC.Amt AS TotalAmount
 FROM ExpByCC
 JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
 WHERE ExpByCC.ccNum = '&cc_number'
   AND ExpMast.ExpDate BETWEEN '&start_date' AND '&end_date'
 UNION ALL
 SELECT NULL, NULL, NULL, SUM(Amt) AS TotalAmount
 FROM ExpByCC
 JOIN ExpMast ON ExpByCC.ExpNum = ExpMast.ExpNum
 WHERE ExpByCC.ccNum = '&cc_number'
   AND ExpMast.ExpDate BETWEEN '&start_date' AND '&end_date' ;

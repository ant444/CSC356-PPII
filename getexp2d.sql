 -- File: getexp2d.sql
 ACCEPT given_date PROMPT 'Enter Date (DD-MON-YY): '
   
 COLUMN ExpNum FORMAT 999999
 COLUMN ExpDate FORMAT A10
 COLUMN Descrip FORMAT A30
 COLUMN TotalAmount FORMAT $999,999.99
 
 -- Display all expenses (with details) incurred on the given date and calculate t>
 SELECT ExpDet.ExpNum, ExpMast.ExpDate, ExpDet.Descrip, ExpDet.Amt AS TotalAmount
 FROM ExpDet
 JOIN ExpMast ON ExpDet.ExpNum = ExpMast.ExpNum
 WHERE ExpMast.ExpDate = '&given_date'
 UNION ALL
 SELECT NULL, NULL, 'Total Amount:', SUM(Amt) AS TotalAmount
 FROM ExpDet
 JOIN ExpMast ON ExpDet.ExpNum = ExpMast.ExpNum
 WHERE ExpMast.ExpDate = '&given_date'
 


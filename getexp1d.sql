-- File: getexp1d.sql

ACCEPT given_date PROMPT 'Enter Date (DD-MON-YY): '

SELECT ExpNumber, ExpDate, StoreCode, CashAmt
FROM ExpMast
WHERE ExpDate = '&given_date';

SELECT SUM(CashAmt) AS TotalAmount
FROM ExpMast
WHERE ExpDate = '&given_date' ; 

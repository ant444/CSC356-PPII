-- File: getexp1d.sql

ACCEPT given_date PROMPT 'Enter Date (YYYY-MM-DD): '

SELECT ExpNumber, ExpDate, StoreCode, CashAmt
FROM ExpMast
WHERE ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD');

SELECT SUM(CashAmt) AS TotalAmount
FROM ExpMast
WHERE ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD');

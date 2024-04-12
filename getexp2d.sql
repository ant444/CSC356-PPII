-- File: getexp2d.sql

ACCEPT given_date PROMPT 'Enter Date (YYYY-MM-DD): '

SELECT em.ExpNumber, em.ExpDate, em.VendorName, em.Amount, ed.ItemName, ed.Quantity, ed.UnitPrice
FROM ExpMast em
JOIN ExpDet ed ON em.ExpNumber = ed.ExpNumber
WHERE em.ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD');

SELECT SUM(em.Amount) AS TotalAmount
FROM ExpMast em
WHERE em.ExpDate = TO_DATE('&given_date', 'YYYY-MM-DD');

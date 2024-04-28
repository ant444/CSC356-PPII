-- File: getexpcc.sql

ACCEPT start_date PROMPT 'Enter Start Date (YYYY-MM-DD): '
ACCEPT end_date PROMPT 'Enter End Date (YYYY-MM-DD): '
ACCEPT cc_number PROMPT 'Enter Credit Card Number: '

SELECT ExpNum, ExpDate, StoreCode, Amt
FROM ExpMast
WHERE ExpDate BETWEEN TO_DATE('&start_date', 'YYYY-MM-DD') AND TO_DATE('&end_date', 'YYYY-MM-DD')
AND ExpNum IN (
    SELECT ExpNum
    FROM ExpByCC
    WHERE ccNum = '&cc_number'
);

SELECT SUM(Amt) AS TotalAmount
FROM ExpMast
WHERE ExpDate BETWEEN TO_DATE('&start_date', 'YYYY-MM-DD') AND TO_DATE('&end_date', 'YYYY-MM-DD')
AND ExpNum IN (
    SELECT ExpNum
    FROM ExpByCC
    WHERE ccNum = '&cc_number'
);

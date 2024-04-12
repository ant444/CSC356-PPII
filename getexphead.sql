-- File: getexphead.sql

ACCEPT given_head PROMPT 'Enter Expense Head: '
ACCEPT start_date PROMPT 'Enter Start Date (YYYY-MM-DD): '
ACCEPT end_date PROMPT 'Enter End Date (YYYY-MM-DD): '

SELECT ExpNumber, ExpDate, VendorName, Amount
FROM ExpMast
WHERE ExpDate BETWEEN TO_DATE('&start_date', 'YYYY-MM-DD') AND TO_DATE('&end_date', 'YYYY-MM-DD')
AND Head = '&given_head';

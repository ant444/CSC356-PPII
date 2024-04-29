-- File: getexphead.sql

ACCEPT given_head PROMPT 'Enter Expense Head: '
ACCEPT start_date PROMPT 'Enter Start Date (DD-MON-YY): '
ACCEPT end_date PROMPT 'Enter End Date (DD-MON-YY): '

SELECT ExpNumber, ExpDate, VendorName, Amount
FROM ExpMast
WHERE ExpDate BETWEEN '&start_date' AND '&end_date'
AND Head = '&given_head';

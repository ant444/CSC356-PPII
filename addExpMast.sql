-- File: addExpMast.sql

ACCEPT exp_number PROMPT 'Enter Expense Number: '
ACCEPT exp_date PROMPT 'Enter Expense Date (YYYY-MM-DD): '
ACCEPT vendor_name PROMPT 'Enter Vendor Name: '
ACCEPT amount PROMPT 'Enter Amount: '

INSERT INTO ExpMast (ExpNumber, ExpDate, VendorName, Amount)
VALUES ('&exp_number', TO_DATE('&exp_date', 'YYYY-MM-DD'), '&vendor_name', '&amount');

COMMIT;

-- File: addexpPay.sql

ACCEPT exp_number PROMPT 'Enter Expense Number: '

-- Display existing payment data for the given expense number
SELECT * FROM ExpByCC WHERE ExpNumber = '&exp_number';

-- Prompt for payment info
ACCEPT cc_number PROMPT 'Enter Credit Card Number: '
ACCEPT payment_date PROMPT 'Enter Payment Date (YYYY-MM-DD): '
ACCEPT amount PROMPT 'Enter Amount: '

INSERT INTO ExpByCC (ExpNumber, CCNumber, PaymentDate, Amount)
VALUES ('&exp_number', '&cc_number', TO_DATE('&payment_date', 'YYYY-MM-DD'), '&amount');

COMMIT;
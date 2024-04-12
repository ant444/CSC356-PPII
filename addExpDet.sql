--File addExpDet.sql

ACCEPT exp_number PROMPT 'Enter Expense Number: '

-- Display existing data in ExpDet for the given expense number
SELECT * FROM ExpDet WHERE ExpNumber = '&exp_number';

-- Prompt for line-item info
ACCEPT item_name PROMPT 'Enter Item Name: '
ACCEPT quantity PROMPT 'Enter Quantity: '
ACCEPT unit_price PROMPT 'Enter Unit Price: '

INSERT INTO ExpDet (ExpNumber, ItemName, Quantity, UnitPrice)
VALUES ('&exp_number', '&item_name', '&quantity', '&unit_price');

COMMIT;

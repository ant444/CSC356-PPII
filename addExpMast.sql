-- File: addExpMast.sql

  -- File: addExpMast.sql
  
  ACCEPT ExpDate PROMPT 'Enter Expense Date (DD-MON-YY): '
  ACCEPT CashAmt PROMPT 'Enter	Cash Amount Spent: $'
  ACCEPT StoreCode PROMPT 'Enter the Store Code: '
  
  INSERT INTO ExpMast (ExpDate, CashAmt, StoreCode)
  VALUES ('&ExpDate', '&CashAmt', '&StoreCode')	;
  

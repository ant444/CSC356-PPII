-- File: addExpMast.sql

  -- File: addExpMast.sql
  
  ACCEPT ExpDate PROMPT 'Enter Expense Date (YYYY-MM-DD): '
  ACCEPT CashAmt PROMPT 'Enter	Cash Amount Spent: $'
  ACCEPT StoreCode PROMPT 'Enter the Store Code: '
  
  INSERT INTO ExpMast (ExpDate, CashAmt, StoreCode)
  VALUES (TO_DATE('&ExpDate', 'YYYY-MM-DD'), '&CashAmt', '&StoreCode')	;
  

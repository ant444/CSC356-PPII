-- addExpense.sql
-- Expense #1
-- Inserting expense mast data
INSERT INTO ExpMast (ExpDate, CashAmt, StoreCode)
VALUES (TO_DATE('01-17-21', 'MM-DD-YY'), 30.00, 'WM');

-- Inserting expense detail data
INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    1,
    'Meat 5 lbs',
    30.49,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1010)
);

INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    2,
    'Milk 6 Gal',
    41.60,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1010)
);

INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    3,
    'DVD Movies Priest',
    7.99,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Entertainment' AND SubCode IS NULL),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Entertainment' AND SubCode IS NULL)
);

INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    4,
    'Sales Tax',
    4.80,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Misc.' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Misc.' AND SubCode = 1010)
);

INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    5,
    'Discount',
    -1.00,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Misc.' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Misc.' AND SubCode = 1010)
);

-- Inserting expense by CC data
INSERT INTO ExpByCC (ExpNum, ccNum, Amt)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    '1000200030004000',
    53.88
);


-- Expense #2
-- Inserting expense mast data
INSERT INTO ExpMast (ExpDate, StoreCode)
VALUES (TO_DATE('01-18-21', 'MM-DD-YY'), 'ME');

-- Inserting expense detail data
INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    1,
    'Electricity Bill Dec ''21',
    78.35,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Utilities' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Utilities' AND SubCode = 1010)
);

-- Inserting expense by CC data
INSERT INTO ExpByCC (ExpNum, ccNum, Amt)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    '1000200030004000',
    78.35
);


-- Expense #3
-- Inserting expense mast data
INSERT INTO ExpMast (ExpDate, StoreCode)
VALUES (TO_DATE('02-07-22', 'MM-DD-YY'), 'TH');

-- Inserting expense detail data
INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    1,
    'Milk 8 Gal',
    35.12,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1010)
);

INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    2,
    'Snacks Donuts',
    4.00,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1020),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Grocery' AND SubCode = 1020)
);

INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    3,
    'Sales Tax',
    2.35,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Misc.' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Misc.' AND SubCode = 1010)
);

-- Inserting expense by CC data
INSERT INTO ExpByCC (ExpNum, ccNum, Amt)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    '4000100020003000',
    41.47
);


-- Expense #4
-- Inserting expense mast data
INSERT INTO ExpMast (ExpDate, StoreCode)
VALUES (TO_DATE('02-07-21', 'MM-DD-YY'), 'TH');

-- Inserting expense detail data
INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    1,
    'Gas 10 Gal',
    39.99,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Utilities' AND SubCode = 1010),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Utilities' AND SubCode = 1010)
);

-- Inserting expense by CC data
INSERT INTO ExpByCC (ExpNum, ccNum, Amt)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    '4000100020003000',
    39.99
);


-- Expense #5
-- Inserting expense mast data
INSERT INTO ExpMast (ExpDate)
VALUES (TO_DATE('03-01-21', 'MM-DD-YY'));

-- Inserting expense detail data
INSERT INTO ExpDet (ExpNum, LineNum, Descrip, Amt, HCode, SubCode)
VALUES (
    (SELECT MAX(ExpNum) FROM ExpMast),
    1,
    'Dining Dinner',
    65.00,
    (SELECT HCode FROM SUBHEAD WHERE Name = 'Entertainment' AND SubCode IS NULL),
    (SELECT SubCode FROM SUBHEAD WHERE Name = 'Entertainment' AND SubCode IS NULL)
);

-- Inserting expense by Cash data
INSERT INTO ExpMast (CashAmt)
VALUES ((SELECT MAX(ExpNum) FROM ExpMast), 65.00);

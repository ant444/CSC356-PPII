-- Filename: addHead.sql

-- addHead.sql

-- Inserting data into the HEAD table
INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (1000, 'Cash', 'A', 2527.00, TO_DATE('01/01/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (1010, 'PNC Account', 'A', 3000.00, TO_DATE('01/01/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (1020, 'Wells Fargo Account', 'A', 0.00, TO_DATE('01/07/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (1030, 'Chase Account', 'L', 0.00, TO_DATE('01/07/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (2010, 'Grocery', 'E', 0.00, TO_DATE('01/01/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (3010, 'Utilities', 'E', 0.00, TO_DATE('01/01/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (4010, 'Entertainment', 'E', 0.00, TO_DATE('01/07/21', 'MM/DD/YY'));

INSERT INTO HEAD (Code, Name, HType, OpBal, HDate)
VALUES (9010, 'Misc. Expense', 'E', 0.00, TO_DATE('01/01/21', 'MM/DD/YY'));

COMMIT;

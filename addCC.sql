-- Filename: addCC.sql

-- Inserting credit cards
INSERT INTO CRCARD (ccType, ccNum, ExpDate, crLimit)
VALUES ('V', '4000100020003000', TO_DATE('09/01/2024', 'MM/DD/YYYY'), 2500.00);

INSERT INTO CRCARD (ccType, ccNum, ExpDate, crLimit)
VALUES ('M', '1000200030004000', TO_DATE('12/01/2025', 'MM/DD/YYYY'), 3000.00);

COMMIT;

-- Had to add COLUMN ccType FORMAT A6 to get format right.

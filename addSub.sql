-- addSub.sql

-- Inserting data into the SUBHEAD table

-- Head: PNC Bank Account
PRINT 'Head: PNC Bank Account';
INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1010, 3210, 'PNC Bank A/C', TO_DATE('01/01/21', 'MM/DD/YY'), 2000.00);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1020, 4050, 'PNC Bank A/C', TO_DATE('01/07/21', 'MM/DD/YY'), 0.00);

-- Head: Wells Fargo Account
PRINT 'Head: Wells Fargo Account';
INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1010, NULL, 'Wells Fargo Chk#1', TO_DATE('01/01/21', 'MM/DD/YY'), 1000.00);

-- Head: Grocery
PRINT 'Grocery';
INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1010, NULL, 'Meat', TO_DATE('01/01/21', 'MM/DD/YY'), NULL);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1020, NULL, 'Snacks', TO_DATE('01/07/21', 'MM/DD/YY'), 0.00);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1030, NULL, 'Milk', TO_DATE('01/01/21', 'MM/DD/YY'), NULL);

-- Head: Utilities
PRINT 'Utilities';
INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1010, NULL, 'Gas', TO_DATE('01/07/21', 'MM/DD/YY'), 0.00);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1020, NULL, 'Electricity', TO_DATE('01/07/21', 'MM/DD/YY'), 678.43);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1030, NULL, 'Phone', TO_DATE('01/08/21', 'MM/DD/YY'), NULL);

-- Head: Entertainment
PRINT 'Entertainment';
INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1010, NULL, 'Bluray Movies', TO_DATE('01/01/21', 'MM/DD/YY'), NULL);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1020, NULL, 'DVD Movies', TO_DATE('01/01/21', 'MM/DD/YY'), NULL);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1030, NULL, 'Dining', TO_DATE('01/01/21', 'MM/DD/YY'), NULL);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1040, NULL, 'Hotels', TO_DATE('01/07/21', 'MM/DD/YY'), NULL);

-- Head: Misc.
PRINT 'Misc.';
INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1010, NULL, 'Sales Tax', TO_DATE('01/01/21', 'MM/DD/YY'), 0.00);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1020, NULL, 'Income Tax', TO_DATE('01/07/21', 'MM/DD/YY'), 0.00);

INSERT INTO SUBHEAD (HCode, SubCode, Name, SDate, OpBal)
VALUES (1030, NULL, 'Discount', TO_DATE('01/07/21', 'MM/DD/YY'), NULL);

COMMIT;


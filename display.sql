COLUMN CODE FORMAT 9999
COLUMN NAME FORMAT A25
COLUMN H FORMAT A1
COLUMN HDATE FORMAT A10
COLUMN OPBAL FORMAT 999999.99
SELECT * FROM HEAD;


-- Display data from SUBHEAD table
SELECT * FROM SUBHEAD;

-- Display data from CRCARD table
COLUMN CCType FORMAT A6
COLUMN CCNUM FORMAT A16
COLUMN EXPDATE FORMAT A10
COLUMN CRLIMIT FORMAT 9999
SELECT * FROM CRCARD;

-- Display data from STORE table
COLUMN CODE FORMAT A4
COLUMN NAME FORMAT A20
SELECT * FROM STORE;

-- Display data from ExpMast table
COLUMN STORE A5
SELECT * FROM ExpMast;

-- Display data from ExpDet table
COLUMN EXPNUM FORMAT 999
COLUMN LINENUM FORMAT 999
COLUMN DESCRIP FORMAT A30
COLUMN AMT FORMAT 999.99
COLUMN HCODE FORMAT 9999
COLUMN SUBCODE FORMAT 9999
SELECT * FROM ExpDet;

-- Display data from ExpByCC table
SELECT * FROM ExpByCC;

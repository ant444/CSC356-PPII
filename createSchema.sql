-- File: createSchema.sql
-- Anthony Nelson
-- CSC 356 - Intro To Database Management Systems

-- Creates a PK in Code, and a Checkable char for HType
CREATE TABLE HEAD (
    Code NUMBER PRIMARY KEY,
    Name VARCHAR2(100) UNIQUE NOT NULL,
    HType CHAR(1) CHECK (HType IN ('A', 'E', 'L', 'R')),
    HDate DATE,
    OpBal NUMBER(10,2)
);

-- This table creation ensures that Code is a FK, and also gives 2 PKs in HCode and SubCode
CREATE TABLE SUBHEAD (
    HCode NUMBER,
    SubCode NUMBER,
    Name VARCHAR2(100),
    SDate DATE,
    OpBal NUMBER(10,2),
    CONSTRAINT pk_subhead PRIMARY KEY (HCode, SubCode),
    CONSTRAINT fk_subhead_head FOREIGN KEY (HCode) REFERENCES HEAD (Code)
);

-- This table creation ensures that ccNum is a PK, and ccType has a specific value
CREATE TABLE CRCARD (
    ccType CHAR(1) CHECK (ccType IN ('V', 'M', 'D')),
    ccNum VARCHAR2(16),
    ExpDate DATE,
    crLimit NUMBER(10,2),
    CONSTRAINT pk_crcard PRIMARY KEY (ccNum)
);


-- not entirely sure if this one is right
CREATE TABLE STORE (
    Code NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    CONSTRAINT uk_store_name UNIQUE (Name)
);

-- a lot going on in this one
CREATE TABLE ExpMast (
    ExpNum NUMBER GENERATED ALWAYS AS IDENTITY,
    ExpDate DATE,
    CashAmt NUMBER(10,2),
    StoreCode NUMBER,
    CONSTRAINT pk_expMast PRIMARY KEY (ExpNum),
    CONSTRAINT fk_expMast_store FOREIGN KEY (StoreCode) REFERENCES STORE (Code)
);



-- creates ExptDet table, makes PKs for ExpNum and LineNum
-- makes constraints / FKs for expNum, HCode & SubCode 
CREATE TABLE ExpDet (
    ExpNum NUMBER,
    LineNum NUMBER,
    Descrip VARCHAR2(255),
    Amt NUMBER(10,2),
    CONSTRAINT pk_expDet PRIMARY KEY (ExpNum, LineNum),
    CONSTRAINT fk_expDet_expMast FOREIGN KEY (ExpNum) REFERENCES ExpMast (ExpNum),
    CONSTRAINT fk_expDet_subhead FOREIGN KEY (HCode, SubCode) REFERENCES SUBHEAD (HCode, SubCode)
);

CREATE TABLE ExpByCC (
    ExpNum NUMBER,
    ccNum VARCHAR2(16),
    Amt NUMBER(10,2),
    CONSTRAINT pk_expByCC PRIMARY KEY (ExpNum, ccNum),
    CONSTRAINT fk_expByCC_expMast FOREIGN KEY (ExpNum) REFERENCES ExpMast (ExpNum),
    CONSTRAINT fk_expByCC_CRCARD FOREIGN KEY (ccNum) REFERENCES CRCARD (ccNum)
);

    

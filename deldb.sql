-- deldb.sql

-- Disable foreign key constraints
SET CONSTRAINTS ALL DEFERRED;

-- Drop tables in reverse order to maintain referential integrity
DROP TABLE ExpByCC;
DROP TABLE ExpDet;
DROP TABLE ExpMast;
DROP TABLE CRCARD;
DROP TABLE SUBHEAD;
DROP TABLE HEAD;
DROP TABLE STORE;

-- Drop any remaining constraints
-- Note: You may need to adjust this section based on your specific database schema
-- ALTER TABLE table_name DROP CONSTRAINT constraint_name;

-- Commit the changes
COMMIT;


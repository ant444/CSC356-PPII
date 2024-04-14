-- createdb.sql

-- Run deldb.sql to delete the existing database
@deldb.sql

-- Run the scripts to recreate the database and populate it with data
-- Note: Adjust the paths and names of the scripts based on your file system
@createSchema.sql
@addHead.sql
@addSub.sql
@addCC.sql
@addStore.sql
@addExpense.sql


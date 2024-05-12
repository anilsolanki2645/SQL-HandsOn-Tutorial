-- -------------------------------------------------------------------------------
					-- TCL(TRANSACTION CONTROL LANGUAGE) COMMANDS
-- -------------------------------------------------------------------------------

-- -------------------------------- [1] COMMIT COMMAND -------------------------------------

-- COMMIT: This command is used to permanently save the changes made during the current transaction

COMMIT;

-- -------------------------------- [2] ROLLBACK COMMAND -------------------------------------

-- ROLLBACK: This command is used to undo all changes made during the current transaction.Example:

ROLLBACK;

-- -------------------------------- [3] SAVEPOINT COMMAND -------------------------------------

-- SAVEPOINT: This command is used to set a named point within a transaction to which you can later roll back

SAVEPOINT my_savepoint;

-- 3.1 RollBack to SavePoint

BEGIN TRANSACTION;

-- Execute SQL queries here

SAVEPOINT my_savepoint;

-- More SQL queries here

ROLLBACK TO SAVEPOINT my_savepoint;

COMMIT;

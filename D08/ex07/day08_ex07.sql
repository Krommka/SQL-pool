--Session_1
	BEGIN;
--Session_2
	BEGIN;
--Session_1
UPDATE pizzeria SET rating = 1.1 WHERE id = 1;
--Session_2
UPDATE pizzeria SET rating = 2.2 WHERE id = 2;
--Session_1
UPDATE pizzeria SET rating = 1.2 WHERE id = 2;
--Session_2
UPDATE pizzeria SET rating = 2.1 WHERE id = 1;
--Session_1
	COMMIT;
--Session_2
	COMMIT;
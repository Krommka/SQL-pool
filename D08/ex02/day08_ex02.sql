--Session_1
	BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session_2
	BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session_1
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session_2
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session_1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
--Session_2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
--Session_1
	COMMIT;
--Session_2
	COMMIT;
--Session_1
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session_2
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
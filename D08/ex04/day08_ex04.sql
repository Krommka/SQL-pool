--Session_1
	BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--Session_2
	BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--Session_1
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session_2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
--Session_2
	COMMIT;
--Session_1
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session_1
	COMMIT;
--Session_1
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--Session_2
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
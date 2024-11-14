--Session_1
    BEGIN;
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
	UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
	SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--Session_2

SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--Session_1

	COMMIT;

--Session_2

SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
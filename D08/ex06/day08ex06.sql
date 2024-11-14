--Session_1
	BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session_2
	BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session_1
SELECT SUM(rating) FROM pizzeria;
--Session_2
INSERT INTO pizzeria VALUES (11, 'Kazan Pizza 2', 4);
--Session_2
	COMMIT;
--Session_1
SELECT SUM(rating) FROM pizzeria;
--Session_1
	COMMIT;
--Session_1
SELECT SUM(rating) FROM pizzeria;
--Session_2
SELECT SUM(rating) FROM pizzeria;

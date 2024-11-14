--Session_1
	BEGIN;
--Session_2
	BEGIN;
--Session_1
SELECT SUM(rating) FROM pizzeria;
--Session_2
INSERT INTO pizzeria VALUES (10, 'Kazan Pizza', 5);
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

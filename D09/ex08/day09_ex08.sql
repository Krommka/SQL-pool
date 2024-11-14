CREATE OR REPLACE FUNCTION fnc_fibonacci(num integer DEFAULT 10)
RETURNS TABLE (fib bigint) AS $$
WITH RECURSIVE f(a,b) AS (
	SELECT 0 AS a, 1 as b
	UNION ALL
	SELECT b, a+b
	FROM f
	WHERE b<num
)
SELECT a FROM f;
$$ LANGUAGE sql;


select * from fnc_fibonacci(20);
select * from fnc_fibonacci();

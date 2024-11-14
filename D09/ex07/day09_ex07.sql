CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr NUMERIC[])
RETURNS NUMERIC AS $$
BEGIN
IF array_length(arr, 1) IS NULL THEN
        RETURN NULL;
END IF;
RETURN (
        SELECT MIN(elem)
FROM UNNEST(arr) AS elem
    );
END;
$$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0,-1.0, 5.0, 4.4]);
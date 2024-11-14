CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson varchar DEFAULT 'Dmitriy',IN pprice numeric DEFAULT 500,IN pdate date DEFAULT '2022-01-08')
RETURNS TABLE(name varchar)
AS $$
BEGIN
RETURN QUERY
SELECT pz.name AS pizzeria_name
FROM menu m
JOIN pizzeria pz ON pz.id = m.pizzeria_id
JOIN person_visits pv ON m.pizzeria_id = pv.pizzeria_id
JOIN person p ON p.id = pv.person_id
WHERE p.name = pperson
  AND m.price < pprice 
  AND visit_date = pdate;
END
$$
LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');

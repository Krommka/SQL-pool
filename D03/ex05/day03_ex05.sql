WITH 
orders AS (
SELECT pz.name AS pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
JOIN person p ON p.id = po.person_id
WHERE p.name = 'Andrey'
), 
visits AS (
SELECT pz.name AS pizzeria_name
FROM person_visits pv
JOIN pizzeria pz ON pz.id = pv.pizzeria_id
JOIN person p ON p.id = pv.person_id
WHERE p.name = 'Andrey'
)
SELECT pizzeria_name
FROM visits
EXCEPT
SELECT pizzeria_name
FROM orders
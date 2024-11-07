SELECT name, count(*)
FROM (WITH 
orders AS (
SELECT pz.name
FROM person_order po
JOIN menu m
ON m.id = po.menu_id
JOIN pizzeria pz
ON m.pizzeria_id = pz.id
), 
visits AS (
SELECT pz.name
FROM person_visits pv
JOIN pizzeria pz
ON pv.pizzeria_id = pz.id
)
SELECT name
FROM visits
UNION ALL
SELECT name
FROM orders) AS cte
GROUP BY name
ORDER BY count DESC, name ASC
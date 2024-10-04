SELECT
	m.pizza_name AS pizza_name,
	m.price,
	pz.name AS pizzeria_name
FROM
	person_order po
RIGHT JOIN menu m 
ON
	po.menu_id = m.id
FULL JOIN pizzeria pz
ON
	pz.id = m.pizzeria_id
WHERE
	po.menu_id IS NULL
ORDER BY
	1,
	2
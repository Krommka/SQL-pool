SELECT
	m.pizza_name,
	pz.name
FROM
	person_order po
JOIN menu m
ON
	po.menu_id = m.id
JOIN person p
ON
	p.id = po.person_id
JOIN pizzeria pz
ON
	pz.id = m.pizzeria_id
WHERE
	p."name" = 'Denis'
	OR p."name" = 'Anna'
ORDER BY
	1,
	2
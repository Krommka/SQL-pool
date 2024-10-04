SELECT
	p.name
FROM
	person p
JOIN person_order po
ON
	po.person_id = p.id
JOIN menu m
ON
	m.id = po.menu_id
WHERE
	(m.pizza_name = 'pepperoni pizza'
		OR m.pizza_name = 'mushroom pizza')
	AND (p.address = 'Moscow'
		OR p.address = 'Samara')
	AND p.gender = 'male'
ORDER BY
	p."name" DESC

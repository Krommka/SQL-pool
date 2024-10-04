SELECT
	pz."name"
FROM
	pizzeria pz
JOIN person_visits pv
ON
	pv.pizzeria_id = pz.id
JOIN person p
ON
	p.id = pv.person_id
JOIN menu m
ON
	m.pizzeria_id = pz.id
WHERE
	p."name" = 'Dmitriy'
	AND m.price < 800
	AND pv.visit_date = '2022-01-08'
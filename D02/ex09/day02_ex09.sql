WITH cte_pepperoni AS (
(
SELECT
	p."name" AS pepperoni
FROM
	person_order po
JOIN menu m ON
	m.id = po.menu_id
JOIN person p ON
	p.id = po.person_id
WHERE
	p.gender = 'female'
	AND m.pizza_name = 'pepperoni pizza')
	),
cte_cheese AS (
(
SELECT
	p."name" AS cheese
FROM
	person_order po
JOIN menu m ON
	m.id = po.menu_id
JOIN person p ON
	p.id = po.person_id
WHERE
	p.gender = 'female'
	AND m.pizza_name = 'cheese pizza')
	)
SELECT
	p.name
FROM
	person p
JOIN 
	cte_pepperoni ON
	cte_pepperoni.pepperoni = p."name"
JOIN
	cte_cheese ON
	cte_cheese.cheese = p."name"
	ORDER BY p.name
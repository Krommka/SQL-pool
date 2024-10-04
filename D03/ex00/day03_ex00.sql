WITH cte_full_menu AS (
SELECT
	pizza_name,
	price,
	pz.name AS pizzeria_name
FROM
	menu m
JOIN pizzeria pz
ON
	pz.id = m.pizzeria_id),
cte_visits AS (
SELECT
	p.name AS person_name,
	pz.name AS pizzeria_name,
	visit_date
FROM
	person_visits pv
JOIN person p
ON
	p.id = pv.person_id
JOIN pizzeria pz
ON
	pz.id = pv.pizzeria_id)
SELECT
	fm.pizza_name,
	fm.price,
	fm.pizzeria_name,
	v.visit_date
FROM
	cte_full_menu fm
FULL JOIN cte_visits v
ON
	v.pizzeria_name = fm.pizzeria_name
WHERE
	person_name = 'Kate'
	AND price BETWEEN 800 AND 1000
ORDER BY
	1,
	2,
	3
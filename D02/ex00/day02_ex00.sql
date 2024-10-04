SELECT
	name,
	rating
FROM
	pizzeria
LEFT JOIN person_visits pv
ON
	pv.pizzeria_id = pizzeria.id
WHERE
	pv.id IS NULL
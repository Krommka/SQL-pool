WITH cte_man_pz AS (
SELECT
		pz.name AS pizzeria_name
FROM
		person_order po
JOIN person p
ON
		p.id = po.person_id
JOIN menu m
ON
		m.id = po.menu_id
JOIN pizzeria pz
ON
		pz.id = m.pizzeria_id
WHERE
		p.gender = 'male'
),
	cte_woman_pz AS (
SELECT
		pz.name AS pizzeria_name
FROM
		person_order po
JOIN person p
ON
		p.id = po.person_id
JOIN menu m
ON
		m.id = po.menu_id
JOIN pizzeria pz
ON
		pz.id = m.pizzeria_id
WHERE
		p.gender = 'female'
)
SELECT
	pizzeria_name
FROM
	(
	SELECT
		pizzeria_name
	FROM
		cte_man_pz
EXCEPT
	SELECT
		pizzeria_name
	FROM
		cte_woman_pz) AS man_only
UNION
SELECT
	pizzeria_name
FROM (
	SELECT
		pizzeria_name
	FROM
		cte_woman_pz
EXCEPT
	SELECT
		pizzeria_name
	FROM
		cte_man_pz) AS woman_only
ORDER BY
	1

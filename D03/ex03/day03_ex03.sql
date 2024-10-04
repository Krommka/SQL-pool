WITH cte_woman AS (
SELECT
	pz.name AS pizzeria_name
FROM
	person_visits pv
JOIN pizzeria pz
ON
	pz.id = pv.pizzeria_id
JOIN person p
ON
	p.id = pv.person_id
WHERE
	p.gender = 'female'
),
cte_man AS (
SELECT
	pz.name AS pizzeria_name
FROM
	person_visits pv
JOIN pizzeria pz
ON
	pz.id = pv.pizzeria_id
JOIN person p
ON
	p.id = pv.person_id
WHERE
	p.gender = 'male'
)
SELECT
	pizzeria_name
FROM
	(
	SELECT
		pizzeria_name
	FROM
		cte_woman
UNION ALL
	SELECT
		pizzeria_name
	FROM
		cte_man) AS combined
GROUP BY
	pizzeria_name
HAVING
	COUNT (*) % 2 = 1
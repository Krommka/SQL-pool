SELECT
	CASE
		WHEN p.name IS NULL THEN '-'
		ELSE p.name
	END AS person_name,
	pv.visit_date,
	CASE
		WHEN pz.name IS NULL THEN '-'
		ELSE pz.name
	END AS pizzeria_name
FROM
		pizzeria pz
FULL JOIN (
	SELECT
			pv.person_id,
			pv.pizzeria_id AS pizzeria_name,
			pv.visit_date
	FROM
			person_visits pv
	WHERE
			visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv
ON
		pv.pizzeria_name = pz.id
FULL JOIN person p 
ON
		p.id = pv.person_id
ORDER BY
		person_name ASC,
		visit_date ASC,
		pizzeria_name ASC

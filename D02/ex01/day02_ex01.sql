SELECT
	missing_date
FROM
	(
	SELECT
		generate_series('2022-01-01'::date,
		'2022-01-10'::date,
		'1 day')::date AS missing_date) AS gs
FULL JOIN (
	SELECT
		*
	FROM
		person_visits pv
	WHERE
		pv.person_id = 1
		OR pv.person_id = 2) AS pv
ON
	gs.missing_date = pv.visit_date
WHERE
	visit_date IS NULL
ORDER BY
	missing_date
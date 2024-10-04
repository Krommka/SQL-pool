SELECT
	p1.name AS person_name1,
	p2.name AS person_name2,
	p1.address AS common_address
FROM
	person p1
CROSS JOIN person p2
WHERE
	p2.name != p1.name
	AND p2.address = p1.address
	AND p1.id > p2.id
ORDER BY
	1,
	2,
	3
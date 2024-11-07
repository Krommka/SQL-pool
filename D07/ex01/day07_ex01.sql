SELECT name, count(*) AS count_of_visits
FROM person_visits pv
JOIN person p
ON p.id = pv.person_id
GROUP BY name
ORDER BY 2 DESC, 1 ASC
LIMIT 4
SELECT name, COUNT(p.name) AS count_of_visits
FROM person_visits pv
JOIN person p ON p.id = pv.person_id
GROUP BY 1
HAVING COUNT(name) > 3
ORDER BY 2 DESC
(SELECT pz.name, COUNT(*) AS count, 'order' AS action_type
FROM person_order po
JOIN menu m
ON m.id = po.menu_id
JOIN pizzeria pz
ON m.pizzeria_id = pz.id
GROUP BY pz.name
ORDER BY count DESC, name
LIMIT 3)
UNION ALL
(SELECT pz.name, COUNT(*) AS count, 'visit' AS action_type
FROM person_visits pv
JOIN pizzeria pz
ON pv.pizzeria_id = pz.id
GROUP by pz.name
ORDER BY count DESC, name
LIMIT 3)
SELECT address, pz."name", COUNT(pz."name") AS count_of_orders
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
GROUP BY 1, 2
ORDER BY 1, 2
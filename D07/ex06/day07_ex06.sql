SELECT name, COUNT(name) AS count_of_orders, ROUND(AVG(price),2) AS average_price, max(price) AS max_price, min(price) AS min_price
FROM person_order po
JOIN menu m
ON m.id = po.menu_id
JOIN pizzeria pz
ON m.pizzeria_id = pz.id
GROUP BY 1
ORDER BY 1
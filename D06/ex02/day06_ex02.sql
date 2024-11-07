SELECT p.name, m.pizza_name, m.price, ROUND(m.price * (100 - pd.discount)/100) AS discount_price, pz.name AS pizzeria_name
FROM person_order po
JOIN person p
ON po.person_id = p.id
JOIN menu m
ON m.id = po.menu_id
JOIN pizzeria pz
ON pz.id = m.pizzeria_id
JOIN person_discounts pd
ON pd.person_id = po.person_id AND pd.pizzeria_id = pz.id
ORDER BY name, pizza_name

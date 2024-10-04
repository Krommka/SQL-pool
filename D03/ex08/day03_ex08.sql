INSERT INTO menu (id, pizzeria_id, pizza_name, price)
SELECT MAX(m.id) + 1, pz.id, 'sicilian pizza', 900
FROM menu m
JOIN pizzeria pz ON
m.pizzeria_id = pz.id
WHERE pz.name = 'Dominos'
GROUP BY pz.id

select count(*)=1 as check from menu where id = 20 and pizzeria_id=2 and pizza_name = 'sicilian pizza' and price=900
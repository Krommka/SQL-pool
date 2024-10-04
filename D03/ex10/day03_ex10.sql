INSERT INTO person_order
VALUES
(
(SELECT MAX(po.id) + 1
FROM person_order po),(
SELECT id
FROM person p
WHERE p.name = 'Denis'),(
SELECT id
FROM menu m
WHERE m.pizza_name = 'sicilian pizza'), '2022-02-24'
),
(
(SELECT MAX(po.id) + 2
FROM person_order po),(
SELECT id
FROM person p
WHERE p.name = 'Irina'),(
SELECT id
FROM menu m
WHERE m.pizza_name = 'sicilian pizza'), '2022-02-24'
)

select count(*)=2 as check from person_order where order_date = '2022-02-24' and person_id in (6,4) and menu_id=(select id from menu where pizza_name = 'sicilian pizza')
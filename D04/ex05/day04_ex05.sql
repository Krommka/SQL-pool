CREATE VIEW v_price_with_discount  AS
SELECT p.name, m.pizza_name, price, ROUND(price - price * 0.1)::integer AS discount_price
FROM person_order po
JOIN person p
ON p.id = po.person_id
JOIN menu m
ON m.id = po.menu_id
ORDER BY 1, 2

select * from v_price_with_discount
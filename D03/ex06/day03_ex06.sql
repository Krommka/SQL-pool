WITH pizza_ranked AS (
SELECT pizza_name, pz.name AS pizzeria_name, price, ROW_NUMBER() OVER (PARTITION BY m.pizza_name, m.price
ORDER BY pz.name) AS pz_rank
FROM menu m
JOIN pizzeria pz ON
pz.id = m.pizzeria_id
WHERE(m.pizza_name, m.price) IN (
        SELECT pizza_name, price
FROM menu
GROUP BY pizza_name, price
HAVING COUNT(DISTINCT pizzeria_id) > 1
    )
)
SELECT pizza_name, MAX(CASE WHEN pz_rank = 1 THEN pizzeria_name END) AS pizzeria_1, MAX(CASE WHEN pz_rank = 2 THEN pizzeria_name END) AS pizzeria_2, price
FROM pizza_ranked
GROUP BY pizza_name, price
ORDER BY pizza_name
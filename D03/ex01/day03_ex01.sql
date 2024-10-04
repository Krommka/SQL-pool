SELECT m.id
FROM person_order po
RIGHT JOIN menu m 
ON po.menu_id = m.id
WHERE po.menu_id IS NULL
ORDER BY 1
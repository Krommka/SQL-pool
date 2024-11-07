CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts(person_id, pizzeria_id);

SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT name, discount
FROM person_discounts pd
JOIN person p
ON p.id = pd.person_id
WHERE pizzeria_id  = 2
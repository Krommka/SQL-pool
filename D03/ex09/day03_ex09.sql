INSERT INTO person_visits
VALUES
(
(SELECT MAX(pv.id) + 1
FROM person_visits pv),(
SELECT id
FROM person p
WHERE p.name = 'Denis'),(
SELECT id
FROM pizzeria pz
WHERE pz.name = 'Dominos'), '2022-02-24'
),
(
(SELECT MAX(pv.id) + 2
FROM person_visits pv),(
SELECT id
FROM person p
WHERE p.name = 'Irina'),(
SELECT id
FROM pizzeria pz
WHERE pz.name = 'Dominos'), '2022-02-24'
)

select count(*)=2 as check from person_visits where visit_date = '2022-02-24' and person_id in (6,4) and pizzeria_id=2;
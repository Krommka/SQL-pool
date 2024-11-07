CREATE SEQUENCE seq_person_discounts START 1;
ALTER TABLE person_discounts ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');
SELECT setval('seq_person_discounts', (select count(*) from person_discounts));


--insert into person_discounts(person_id, pizzeria_id, discount) VALUES (1, 2, 10);
--DELETE from person_discounts WHERE id = 16;

select count(*)=1 as check1,    max("start_value") = 1 as check2,
    max("last_value") > 5 as check3
from pg_sequences
where sequencename  = 'seq_person_discounts'

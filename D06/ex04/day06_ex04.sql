ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_person_id CHECK (person_id IS NOT NULL);
ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_pizzeria_id CHECK (pizzeria_id IS NOT NULL);
ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_discount CHECK (discount IS NOT NULL);
ALTER TABLE person_discounts ALTER COLUMN discount SET DEFAULT 0;
ALTER TABLE person_discounts ADD CONSTRAINT ch_range_discount CHECK (discount <= 100 AND discount >= 0);

select count(*) = 4 as check from pg_constraint
where conname in ('ch_nn_person_id','ch_nn_pizzeria_id','ch_nn_discount','ch_range_discount')

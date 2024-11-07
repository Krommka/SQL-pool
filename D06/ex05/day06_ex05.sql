COMMENT ON TABLE person_discounts IS 'Table contain list of persons discount in different pizzerias';
COMMENT ON COLUMN person_discounts.id IS 'Column contain tables primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'Column contain person id from person table';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Column contain pizzeria id from pizzeria table';
COMMENT ON COLUMN person_discounts.discount IS 'Column contain persons discount level in percents from 0 to 100';

--\d+ person_discounts

select column_default::integer = 0 as check from information_schema.columns
where column_name = 'discount' and table_name = 'person_discounts'
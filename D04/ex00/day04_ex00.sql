CREATE VIEW v_persons_female AS
SELECT *
FROM person p 
WHERE p.gender = 'female'

CREATE VIEW v_persons_male AS
SELECT *
FROM person p 
WHERE p.gender = 'male'

--SELECT * FROM pg_views WHERE schemaname NOT IN ('pg_catalog', 'information_schema');
select * from v_persons_female order by 1

select * from v_persons_male order by 1
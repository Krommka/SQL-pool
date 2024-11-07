CREATE TABLE IF NOT EXISTS person_discounts (
    id bigint primary key ,
    person_id bigint not null ,
 	pizzeria_id bigint not null ,
 	discount numeric(5, 2) CHECK (discount <= 100 AND discount >= 0) DEFAULT 0,
 	constraint fk_person_discounts_person_id foreign key  (person_id) references person(id),
 	constraint fk_person_discounts_pizzeria_id foreign key  (pizzeria_id) references pizzeria(id) 	
);

select count(*) = 1 as check from pg_tables
where tablename = 'person_discounts'

--DROP TABLE person_discounts;
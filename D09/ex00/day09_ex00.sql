CREATE TABLE person_audit
(created TIMESTAMP(0) WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP ,
type_event char(1) NOT NULL DEFAULT 'I'
CONSTRAINT ch_type_event CHECK (type_event IN ('I', 'U', 'D')),
row_id bigint NOT NULL,
name varchar, 
age integer, 
gender varchar, 
address varchar);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO person_audit
    SELECT CURRENT_TIMESTAMP AT TIME ZONE 'Europe/Moscow', 'I', NEW.*;
   	RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit AFTER INSERT ON person
    FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_insert_audit();
    
INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');


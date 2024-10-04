SELECT
    order_date,
    CONCAT(person.name, ' (age:', age, ')') AS person_information
FROM
    person_order AS a(order_id, id, menu_id, order_date) NATURAL
    JOIN person
ORDER BY
    order_date ASC,
    person_information ASC
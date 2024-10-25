-- DELETE
USE borrador_pbd2;

-- Delete a single record
DELETE FROM customer WHERE id_customer = 1;

-- Delete multiple records
DELETE FROM customer WHERE id_customer IN (2, 3, 4);
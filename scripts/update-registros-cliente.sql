-- ACTUALIZAR
USE borrador_pbd2;

-- Update a single record
UPDATE customer SET first_name = 'Juan', middle_name = 'Carlos', last_name_paternal = 'Pérez', last_name_maternal = 'Garcia'
 WHERE id_customer = 1;
select * from customer;

-- Update multiple records
UPDATE customer SET id_payment_method = 2 WHERE id_customer IN (2, 3, 4);
select * from customer;
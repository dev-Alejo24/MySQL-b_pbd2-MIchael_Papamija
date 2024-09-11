-- DELETE
USE borrador_pbd2;

-- Delete a single record
DELETE FROM cliente WHERE id_cliente = 1;

-- Delete multiple records
DELETE FROM cliente WHERE id_cliente IN (2, 3, 4);
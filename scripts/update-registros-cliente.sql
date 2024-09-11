-- ACTUALIZAR
USE borrador_pbd2;

-- Update a single record
UPDATE cliente SET nombre = 'Juan Carlos', apellido = 'Pérez García' WHERE id_cliente = 1;
select * from cliente;

-- Update multiple records
UPDATE cliente SET id_metodo_pago = 2 WHERE id_cliente IN (2, 3, 4);
select * from cliente;
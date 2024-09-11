-- MODIFY COLUMN
USE borrador_pbd2;

ALTER TABLE cliente MODIFY COLUMN email VARCHAR(50);
select * from cliente;
-- ADD COLUMN
USE borrador_pbd2;

ALTER TABLE cliente ADD COLUMN fecha_nacimiento DATE;
select * from cliente;
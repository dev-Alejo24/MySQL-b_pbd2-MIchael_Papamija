-- ADD COLUMN
USE borrador_pbd2;

ALTER TABLE customer ADD COLUMN date_birth DATE;
select * from customer;
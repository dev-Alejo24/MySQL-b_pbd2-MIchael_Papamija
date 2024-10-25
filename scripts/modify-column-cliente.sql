-- MODIFY COLUMN
USE borrador_pbd2;

ALTER TABLE customer MODIFY COLUMN email VARCHAR(50);
select * from customer;
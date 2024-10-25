USE borrador_pbd;

SELECT * FROM customer 
WHERE id_payment_method IN (2, 5) AND first_name LIKE '%Mar%';
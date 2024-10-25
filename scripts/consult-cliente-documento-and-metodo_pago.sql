USE borrador_pbd;

SELECT * FROM customer 
WHERE document LIKE '2%' AND id_payment_method != 1;
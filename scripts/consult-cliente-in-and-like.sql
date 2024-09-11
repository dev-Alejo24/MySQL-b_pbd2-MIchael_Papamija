USE borrador_pbd;

SELECT * FROM cliente 
WHERE id_metodo_pago IN (2, 5) AND nombre LIKE '%Mar%';
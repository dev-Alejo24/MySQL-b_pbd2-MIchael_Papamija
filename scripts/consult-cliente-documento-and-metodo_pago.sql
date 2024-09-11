USE borrador_pbd;

SELECT * FROM cliente 
WHERE documento LIKE '2%' AND id_metodo_pago != 1;
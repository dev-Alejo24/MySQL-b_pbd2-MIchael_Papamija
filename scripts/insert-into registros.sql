USE borrador_pbd2;

-- tipo de documento 
INSERT INTO tipo_documento (tipo_documento) VALUES
('DNI'),
('Pasaporte'),
('Cédula'),
('Licencia'),
('Otro');
SELECT * FROM tipo_documento;

-- cargo
INSERT INTO cargo (cargo, descripcion) VALUES
('Administrador', 'Persona encargada de administrar el sistema'),
('Vendedor', 'Persona encargada de vender productos'),
('Contador', 'Persona encargada de contabilidad'),
('Recepcionista', 'Persona encargada de recibir clientes'),
('Gerente', 'Persona encargada de gerenciar el negocio');
SELECT * FROM cargo;

-- turno
INSERT INTO turno (turno, descripcion) VALUES
('Mañana', 'Turno de mañana'),
('Tarde', 'Turno de tarde'),
('Noche', 'Turno de noche'),
('Rotativo', 'Turno rotativo'),
('Flexible', 'Turno flexible');
SELECT * FROM turno;

-- método de pago 
INSERT INTO metodo_pago (metodo_pago, descripcion) VALUES
('Efectivo', 'Pago en efectivo'),
('Tarjeta de crédito', 'Pago con tarjeta de crédito'),
('Transferencia', 'Pago por transferencia bancaria'),
('Cheque', 'Pago con cheque'),
('PayPal', 'Pago con PayPal');
SELECT * FROM metodo_pago;

-- cliente 
INSERT INTO cliente (nombre, apellido, id_tipo_documento, documento, telefono, email, direccion, id_metodo_pago) VALUES
('Juan', 'Pérez', 1, '12345678', '1234567890', 'juan.perez@example.com', 'Calle 1', 3),
('María', 'González', 2, '98765432', '9876543210', 'maria.gonzalez@example.com', 'Calle 2', 1),
('Pedro', 'Rodríguez', 3, '11111111', '1111111111', 'pedro.rodriguez@example.com', 'Calle 3', 4),
('Ana', 'Sánchez', 4, '22222222', '2222222222', 'ana.sanchez@example.com', 'Calle 4', 2),
('Luis', 'Martínez', 5, '33333333', '3333333333', 'luis.martinez@example.com', 'Calle 5', 5);
SELECT * FROM cliente;

-- empleado
INSERT INTO empleado (nombre, apellido, id_tipo_documento, documento, telefono, email, direccion, id_cargo, id_turno, fecha_contratacion, salario) VALUES
('Carlos', 'García', 1, '44444444', '4444444444', 'carlos.garcia@example.com', 'Calle 6', 1, 1, '2020-01-01', 50000.00),
('Sofía', 'Díaz', 2, '55555555', '5555555555', 'sofia.diaz@example.com', 'Calle 7', 2, 2, '2020-02-01', 60000.00),
('Miguel', 'Hernández', 3, '66666666', '6666666666', 'miguel.hernandez@example.com', 'Calle 8', 3, 3, '2020-03-01', 70000.00),
('Laura', 'Gómez', 4, '77777777', '7777777777', 'laura.gomez@example.com', 'Calle 9', 4, 4, '2020-04-01', 80000.00),
('Javier', 'López', 5, '88888888', '8888888888', 'javier.lopez@example.com', 'Calle 10', 5, 5, '2020-05-01', 90000.00);
SELECT * FROM empleado;

-- detalle_pago (tabla débil)
INSERT INTO detalle_pago (id_cliente, fecha_pago, monto_pago, id_metodo_pago) VALUES
(1, '2023-09-10', 100.50, 3),
(2, '2023-09-11', 200.00, 1),
(3, '2023-09-12', 300.75, 4),
(4, '2023-09-13', 400.30, 2),
(5, '2023-09-14', 500.20, 5);
SELECT * FROM detalle_pago;

-- telefono_cliente (atributo multivalorado)
INSERT INTO telefono_cliente (id_cliente, telefono) VALUES
(1, '1234567890'),
(1, '0987654321'),
(2, '9876543210'),
(3, '1111111111'),
(4, '2222222222'),
(5, '3333333333');
SELECT * FROM telefono_cliente;

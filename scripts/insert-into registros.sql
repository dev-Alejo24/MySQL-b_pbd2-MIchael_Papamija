USE borrador_pbd2;

-- Document Type
INSERT INTO document_type (name_dt) VALUES
('DNI'),
('Passport'),
('ID Card'),
('License'),
('Other');
SELECT * FROM document_type;

-- Position
INSERT INTO pos (name_pos, descrip) VALUES
('Administrator', 'Person in charge of managing the system'),
('Salesperson', 'Person in charge of selling products'),
('Accountant', 'Person in charge of accounting'),
('Receptionist', 'Person in charge of receiving clients'),
('Manager', 'Person in charge of managing the business');
SELECT * FROM pos;

-- Shift
INSERT INTO shift (name_sh, descrip) VALUES
('Morning', 'Morning shift'),
('Afternoon', 'Afternoon shift'),
('Night', 'Night shift'),
('Rotating', 'Rotating shift'),
('Flexible', 'Flexible shift');
SELECT * FROM shift;

-- Payment Method
INSERT INTO payment_method (name_pm, descrip) VALUES
('Cash', 'Payment in cash'),
('Credit Card', 'Payment with credit card'),
('Transfer', 'Payment by bank transfer'),
('Check', 'Payment by check'),
('PayPal', 'Payment with PayPal');
SELECT * FROM payment_method;

-- Customer
INSERT INTO customer (first_name, middle_name, last_name_maternal, last_name_paternal, id_document_type, document, phone, email, address, id_payment_method) VALUES
('Juan', 'Pérez', 'Pérez', 'Pérez', 1, '12345678', '1234567890', 'juan.perez@example.com', 'Street 1', 3),
('María', 'González', 'González', 'González', 2, '98765432', '9876543210', 'maria.gonzalez@example.com', 'Street 2', 1),
('Pedro', 'Rodríguez', 'Rodríguez', 'Rodríguez', 3, '11111111', '1111111111', 'pedro.rodriguez@example.com', 'Street 3', 4),
('Ana', 'Sánchez', 'Sánchez', 'Sánchez', 4, '22222222', '2222222222', 'ana.sanchez@example.com', 'Street 4', 2),
('Luis', 'Martínez', 'Martínez', 'Martínez', 5, '33333333', '3333333333', 'luis.martinez@example.com', 'Street 5', 5);
SELECT * FROM customer;

-- Employee
INSERT INTO employee (first_name, middle_name, last_name_maternal, last_name_paternal, id_document_type, document, phone, email, address, id_position, id_shift, hiring_date, salary) VALUES
('Carlos', 'García', 'García', 'García', 1, '44444444', '4444444444', 'carlos.garcia@example.com', 'Street 6', 1, 1, '2020-01-01', 50000.00),
('Sofía', 'Díaz', 'Díaz', 'Díaz', 2, '55555555', '5555555555', 'sofia.diaz@example.com', 'Street 7', 2, 2, '2020-02-01', 60000.00),
('Miguel', 'Hernández', 'Hernández','Hernández' ,3,'66666666','6666666666','miguel.hernandez@example.com','Street 8' ,3 ,3 ,'2020-03-01' ,70000.00),
('Laura','Gómez','Gómez','Gómez' ,4,'77777777','7777777777','laura.gomez@example.com','Street 9' ,4 ,4 ,'2020-04-01' ,80000.00),
('Javier','López','López','López' ,5,'88888888','8888888888','javier.lopez@example.com','Street 10' ,5 ,5 ,'2020-05-01' ,90000.00);
SELECT * FROM employee;

-- Payment Detail (Weak Table)
INSERT INTO payment_detail (id_customer, payment_date, payment_amount, id_payment_method) VALUES
(1, '2023-09-10', 100.50, 3),
(2, '2023-09-11', 200.00, 1),
(3, '2023-09-12', 300.75, 4),
(4, '2023-09-13', 400.30, 2),
(5, '2023-09-14', 500.20, 5);
SELECT * FROM payment_detail;

-- Customer Phone (Multivalued Attribute)
INSERT INTO customer_phone (id_customer, phone) VALUES
(1,'1234567890'),
(1,'0987654321'),
(2,'9876543210'),
(3,'1111111111'),
(4,'2222222222'),
(5,'3333333333');
SELECT * FROM customer_phone;
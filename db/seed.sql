INSERT INTO categories (name, description) VALUES
('Electrónica', 'Gadgets y dispositivos'),
('Ropa', 'Moda para todos'),
('Hogar', 'Artículos para casa y jardín'),
('Deportes', 'Equipamiento deportivo');

-- Usuarios
INSERT INTO users (name, email, role, created_at) VALUES
('Moisés Admin', 'moises@test.com', 'admin', '2025-01-01 10:00:00'),
('Juan Perez', 'juan@test.com', 'cliente', '2025-01-02 11:30:00'),
('Maria Lopez', 'maria@test.com', 'cliente', '2025-01-05 09:00:00'),
('Carlos Ruiz', 'carlos@test.com', 'cliente', '2025-02-01 14:20:00'),
('Ana Torres', 'ana@test.com', 'cliente', '2025-02-10 16:45:00');

-- Productos 
INSERT INTO products (name, description, price, cost, stock, category_id) VALUES
('Laptop Gamer', 'Potente laptop para juegos', 1500.00, 1200.00, 10, 1),
('Mouse Inalámbrico', 'Mouse ergonómico', 25.00, 10.00, 50, 1),
('Camiseta React', 'Camiseta de algodón', 20.00, 5.00, 100, 2),
('Jeans Clásicos', 'Pantalón de mezclilla', 45.00, 20.00, 30, 2),
('Cafetera Pro', 'Café expreso en casa', 80.00, 40.00, 15, 3),
('Set de Pesas', 'Mancuernas de 10kg', 60.00, 30.00, 20, 4),
('Monitor 4K', 'Monitor de alta resolución', 300.00, 200.00, 12, 1);

-- Órdenes 
INSERT INTO orders (user_id, status, created_at) VALUES
(2, 'completed', '2025-01-10 10:00:00'), 
(2, 'completed', '2025-01-15 15:00:00'), 
(3, 'completed', '2025-02-05 12:00:00'), 
(4, 'pending',   '2025-02-18 09:30:00'), 
(5, 'cancelled', '2025-02-19 11:00:00'); 

-- Items de Órdenes
-- Orden 1 (Juan): Laptop + Mouse
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1500.00),
(1, 2, 2, 25.00);

-- Orden 2 (Juan): Solo Camiseta
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(2, 3, 3, 20.00);

-- Orden 3 (Maria): Cafetera + Monitor
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(3, 5, 1, 80.00),
(3, 7, 2, 300.00);

-- Orden 4 (Carlos - Pending): Pesas
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(4, 6, 1, 60.00);

-- Orden 5 (Ana - Cancelled): Jeans
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(5, 4, 2, 45.00);

-- Reseñas 
INSERT INTO reviews (product_id, user_id, rating, comment) VALUES
(1, 2, 5, 'Excelente laptop, corre todo.'),
(1, 3, 4, 'Muy buena pero se calienta un poco.'),
(2, 2, 3, 'Cumple su función, nada especial.'),
(5, 4, 5, 'El mejor café de mi vida.'),
(3, 5, 2, 'La tela es muy delgada.');
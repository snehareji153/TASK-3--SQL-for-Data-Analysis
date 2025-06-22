CREATE UNIQUE INDEX idx_customer_email ON customers (email);
SHOW INDEX FROM customers;

CREATE INDEX idx_order_date ON orders (order_date);
SHOW INDEX FROM orders;

CREATE INDEX idx_product_category ON products (category);
SHOW INDEX FROM products;


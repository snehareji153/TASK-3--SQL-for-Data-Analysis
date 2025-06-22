SELECT p.name AS product_name, oi.quantity, oi.price AS item_price
FROM order_items oi
RIGHT JOIN products p ON oi.product_id = p.product_id;
CREATE VIEW product_sales_by_category AS
SELECT
    p.category,
    SUM(oi.quantity * oi.price) AS total_sales_amount,
    SUM(oi.quantity) AS total_items_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category;


SELECT *
FROM product_sales_by_category;
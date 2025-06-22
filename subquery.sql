SELECT DISTINCT P.name
FROM products P
WHERE P.product_id IN (
    SELECT OI.product_id
    FROM order_items OI
    WHERE OI.order_id IN (
        SELECT O.order_id
        FROM orders O
        WHERE O.customer_id = (
            SELECT C.customer_id
            FROM customers C
            WHERE C.first_name = 'John' AND C.last_name = 'Doe'
        )
    )
);
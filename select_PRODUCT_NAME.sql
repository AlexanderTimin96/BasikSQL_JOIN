SELECT product_name, name AS Customer
FROM shop.orders o
         LEFT JOIN shop.customers c ON c.id = o.customer_id
WHERE LOWER(name) = LOWER('Alexey')
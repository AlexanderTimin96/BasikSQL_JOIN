CREATE TABLE IF NOT EXISTS shop.orders
(
    id           SERIAL PRIMARY KEY,
    date         TIMESTAMP WITH TIME ZONE,
    customer_id  INTEGER,
    product_name VARCHAR(255),
    amount       BIGINT,
    FOREIGN KEY (customer_id) REFERENCES shop.customers (id)
);

INSERT INTO shop.orders (date, customer_id, product_name, amount)
VALUES ('2004-10-19 10:23:54+02', 1, 'Carrot', 1500),
       ('2013-10-19 10:23:54+02', 2, 'Beer', 15000),
       ('2022-10-19 10:23:54+02', 2, 'Vodka', 30000),
       ('2023-10-19 10:23:54+02', 3, 'Carrot', 1500)
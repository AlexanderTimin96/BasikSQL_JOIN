CREATE SCHEMA IF NOT EXISTS shop;

CREATE TABLE IF NOT EXISTS shop.customers
(
    id           SERIAL PRIMARY KEY,
    name         varchar(255)        NOT NULL,
    surname      varchar(255)        NOT NULL,
    age          INTEGER CHECK ( age > 0 AND age < 120 ),
    phone_number varchar(30) UNIQUE NOT NULL
);


INSERT INTO shop.customers (name, surname, age, phone_number)
VALUES ('Alex', 'Ivanov', 20, 89188886753),
('AlExeY', 'Romanov', 20, 89108886784),
('Roman', 'Kuznecov', 20, 89108886758),
('Katya', 'Ivanova', 20, 89108876759)

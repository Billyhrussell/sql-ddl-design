CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL
);




CUSTOMERS <-- ALL ORDERS --> ORDERS --> BIKES

CUSTOMERS
CUSTOMER ID -PRIMARY || INFO ABOUT CUSTOMER(ADDRESS, ETC)

ALL ORDERS
ORDER ID -PRIMARY || TIME PLACED || CUSTOMER ID -FOREIGN || TOTAL
                                                            PRICE * AMT


ORDERS
ORDER ID - FOREIGN ID || BIKE MODEL -FOREIGN|| PRICE- FOREIGN || AMOUNT OF BIKES || NOTES
    1                        FLY                                        2
    1                       HAUL                                        1


BIKES
BIKE MODEL - PRIMARY|| PRICE- PRIMARY


CREATE DATABASES bernie_bikes
\c bernie_bikes

CREATE TABLE bikes (
    model TEXT PRIMARY KEY,
    price NUMERIC(10,2) NOT NULL
)

CREATE TABLE all_orders (
    order_id SERIAL PRIMARY KEY,
    time_placed TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id TEXT NOT NULL REFERENCES customers,
    WHERES THE TOTAL??
)

CREATE TABLE orders (
    product_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES all_orders,
    model TEXT NOT NULL REFERENCES bikes,
    price NUMERIC(10,2) NOT NULL
    amt_of_bikes INT NOT NULL DEFAULT 1,
    notes TEXT
)


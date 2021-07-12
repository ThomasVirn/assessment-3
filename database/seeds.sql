-- Inserts Data into Store DB (Addresses)
INSERT INTO addresses (customer_id, line_1, city, state, zipcode) 
VALUES (1, '425 Shreveport Rd', 'Barksdale', 'LA', '71110');
INSERT INTO addresses (customer_id, line_1, city, state, zipcode) 
VALUES (2, '100 Madeup Pl', 'Blah', 'VA', '31310');
INSERT INTO addresses (customer_id, line_1, city, state, zipcode) 
VALUES (3, '117 MasterChief Ln', 'UNSC', 'NY', '12345');
INSERT INTO addresses (customer_id, line_1, city, state, zipcode) 
VALUES (4, '303 Warcraft Rd', 'Orgrimmar', 'UT', '66554');
INSERT INTO addresses (customer_id, line_1, city, state, zipcode) 
VALUES (5, '222 Some Rd.', 'Farmville', 'IL', '00000');

-- Inserts Data into Store DB (Customers)
INSERT INTO customers (first_name, last_name, email, addresses_id) 
VALUES ('Bugs', 'Bunny', 'carrots@hotmail.com', 1);
INSERT INTO customers (first_name, last_name, email, addresses_id) 
VALUES ('House', 'MD', 'vicodin@gmail.com', 2);
INSERT INTO customers (first_name, last_name, email, addresses_id) 
VALUES ('Fibonacci', 'Sequence', 'numbers@gmail.com', 3);
INSERT INTO customers (first_name, last_name, email, addresses_id)
VALUES ('Hughie', 'Lewis', 'thenews@gmail.com', 4);
INSERT INTO customers (first_name, last_name, email, addresses_id) 
VALUES ('John', 'Johnington', 'jonjon@yahoo.com', 5);

-- Inserts Data into Store DB (Categories)
INSERT INTO categories (name) 
VALUES ('Displays');
INSERT INTO categories (name) 
VALUES ('Gaming');
INSERT INTO categories (name) 
VALUES ('Accessories');


-- Inserts Data into Store DB (Products)  
INSERT INTO products (name, price, category_id) 
VALUES ('CRT', 100, 1);
INSERT INTO products (name, price, category_id) 
VALUES ('Gaming Chair', 9999, 2);
INSERT INTO products (name, price, category_id) 
VALUES ('Hologram Table', 3, 1);
INSERT INTO products (name, price, category_id) 
VALUES ('VR Headset', 4000, 2);
INSERT INTO products (name, price, category_id) 
VALUES ('Gamer Fuel', 300, 3);

-- Inserts Data into Store DB (Orders)
INSERT INTO orders (date, customer_id) 
VALUES ('2020-01-05', 1);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-02-10', 2);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-03-11', 3);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-03-11', 4);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-04-13', 5);


--  Inserts Data into Store DB (Product Orders)
INSERT INTO order_products (order_id, product_id, addresses_id) 
VALUES (1, 2, 1);
INSERT INTO order_products (order_id, product_id, addresses_id) 
VALUES (2, 3, 3);
INSERT INTO order_products (order_id, product_id, addresses_id) 
VALUES (3, 3, 2);
INSERT INTO order_products (order_id, product_id, addresses_id) 
VALUES (1, 2, 4);
INSERT INTO order_products (order_id, product_id, addresses_id) 
VALUES (4, 3, 5);
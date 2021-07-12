
-- Schema creation goes here


DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS order_products CASCADE;

CREATE TABLE addresses (
  id        SERIAL PRIMARY KEY,
  line_1    VARCHAR(40),
  city      VARCHAR(40),
  state     VARCHAR(2),
  zipcode   VARCHAR(5)
)

CREATE TABLE customers (
  id              SERIAL PRIMARY KEY,
  first_name      VARCHAR(30) NOT NULL,
  last_name       VARCHAR(30) NOT NULL,
  email           VARCHAR(30) NOT NULL,
  addresses_id    INTEGER
);

CREATE TABLE categories (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(50)
)

CREATE TABLE products (    
  id              SERIAL PRIMARY KEY,
  name            VARCHAR(50),
  price           INTEGER,
  category_id     INTEGER
);

CREATE TABLE orders (
  id                SERIAL PRIMARY KEY,
  date              DATE NOT NULL,
  customer_id       INTEGER
);

CREATE TABLE order_products (
  id            SERIAL PRIMARY KEY,
  order_id      INTEGER,
  product_id    INTEGER,
  addresses_id  INTEGER
);


ALTER TABLE customers
  ADD CONSTRAINT fk_customers_address_id 
  FOREIGN KEY(address_id) 
  REFERENCES addresses(id);

ALTER TABLE products
  ADD CONSTRAINT fk_products_category_id 
  FOREIGN KEY(category_id) 
  REFERENCES categories (id);
    
ALTER TABLE orders
  ADD CONSTRAINT fk_orders_customer_id 
  FOREIGN KEY(customer_id) 
  REFERENCES customers(id);

ALTER TABLE order_products
  ADD CONSTRAINT fk_order_id 
  FOREIGN KEY(order_id) 
  REFERENCES orders(id);

ALTER TABLE order_products
  ADD CONSTRAINT fk_product_id 
  FOREIGN KEY(product_id) 
  REFERENCES products(id);
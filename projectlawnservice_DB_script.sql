
-- Create Table Customer
CREATE TABLE customer (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  address VARCHAR(45) NOT NULL,
  phone VARCHAR(10) NOT NULL,
  city VARCHAR(10) NOT NULL,
  zipcode VARCHAR(5) NOT NULL,
  credit_number VARCHAR(16) NOT NULL,
  expiration_number VARCHAR(4) NOT NULL,
  PRIMARY KEY (id));

-- Create Table Category
CREATE TABLE category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));

-- Create Table Product
CREATE TABLE product (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL,
  price DECIMAL(5,2) NOT NULL,
  last_update TIMESTAMP NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_category
    FOREIGN KEY (category_id)
    REFERENCES category (id)
    ON DELETE CASCADE);

-- Create Table Customer_order
CREATE TABLE customer_order (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  total_order DECIMAL(5,2) NOT NULL,
  date_order TIMESTAMP NOT NULL,
  confirmation_number INT NOT NULL,
  customer_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT fk_customer_order_customer
    FOREIGN KEY (customer_id)
    REFERENCES customer (id)
    ON DELETE CASCADE);

-- Create Table Ordered_product
CREATE TABLE ordered_product (
  customer_order_id INT UNSIGNED NOT NULL,
  product_id INT UNSIGNED NOT NULL,
  quantity SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (customer_order_id, product_id),  
  CONSTRAINT fk_ordered_customer_order
    FOREIGN KEY (customer_order_id)
    REFERENCES customer_order (id)
    ON DELETE CASCADE,
  CONSTRAINT fk_ordered_product_product
    FOREIGN KEY (product_id)
    REFERENCES product (id)
    ON DELETE CASCADE);

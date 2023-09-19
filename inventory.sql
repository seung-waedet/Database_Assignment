CREATE DATABASE inventory;
USE inventory;

CREATE TABLE users (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    email varchar(255),
    password varchar(255),
    contact varchar(255),
    phone_number varchar(255),
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE products (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    size varchar(255),
    category varchar(255),
    description varchar(255),
    price varchar(255),
    stock_quantity varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE orders (
    id int NOT NULL,
    date datetime DEFAULT CURRENT_TIMESTAMP,
    status varchar(255),
    total_cost varchar(255),
    shipping_address varchar(255),
    price varchar(255),
    user_id int,
    FOREIGN KEY (user_id) REFERENCES users(id),
    PRIMARY KEY (id)
);

CREATE TABLE order_details (
    id int NOT NULL,
    product_id int,
	order_id int,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    PRIMARY KEY (id)
);

CREATE TABLE categories (
    id int NOT NULL,
    name varchar(255),
    description varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE product_categories (
    id int NOT NULL,
    product_id int,
	category_id int,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (category_id) REFERENCES categories(id),
    PRIMARY KEY (id)
);

CREATE TABLE admin (
    id int NOT NULL,
    name varchar(255),
    user_id int,
    FOREIGN KEY (user_id) REFERENCES users(id),
    PRIMARY KEY (id)
);

INSERT INTO table1 
(field1, field2) 
VALUES (value1, value2);

INSERT INTO users 
(id, name, email, password, contact, phone_number)
values (1, 'Victor', 'riri@gmail.com', '123456', '08223334345', '098039949494');

INSERT INTO users 
(id, name, email, password, contact, phone_number)
values (2, 'James', 'jamie@gmail.com', '123456', '0822334445', '0980449494');

INSERT INTO users 
(id, name, email, password, contact, phone_number)
values (3, 'Baki', 'bboy@gmail.com', '123456', '0822334445', '0980449494');

SELECT * FROM users;

SELECT id, email FROM users
WHERE name = 'Baki';

UPDATE users 
SET name = 'John Wick' 
where id = 2;

INSERT INTO products
(id, name, size, category, description, price, stock_quantity)
values (1, 'Fan', 'Large', 'Appliances', 'OX fan, 4 blades', '10,000', '10');

INSERT INTO products
(id, name, size, category, description, price, stock_quantity)
values (2, 'Laptop', 'Small', 'Gadgets', 'Lenovo Thinkpad', '100,000', '5');

SELECT * FROM products;

SELECT category, stock_quantity FROM products
WHERE name = 'Fan';

UPDATE products
SET stock_quantity = 2 
WHERE id = 1;

DELETE FROM users
WHERE id = 3;

DELETE FROM products
WHERE id = 2;





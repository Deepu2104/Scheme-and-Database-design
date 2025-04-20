Q2. SQL and Database Design

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Order (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE OrderItem (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);



INSERT INTO User (name, email)
VALUES 
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

INSERT INTO Product (name, price)
VALUES 
('Laptop', 1200.00),
('Mouse', 25.50),
('Keyboard', 45.00),
('Monitor', 300.00);


INSERT INTO `Order` (user_id)
VALUES 
(1), 
(1),
(2); 


INSERT INTO OrderItem (order_id, product_id, quantity)
VALUES 
(1, 1, 1),   -- Order 1: Laptop x1
(1, 2, 2),   -- Order 1: Mouse x2
(2, 3, 1),   -- Order 2: Keyboard x1
(3, 2, 1),   -- Order 3: Mouse x1
(3, 4, 1);   -- Order 3: Monitor x1



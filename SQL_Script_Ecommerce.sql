CREATE DATABASE Ecommerce;
use Ecommerce;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE addresses (
    address_id INT PRIMARY KEY auto_increment,
    customer_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY auto_increment,
    category_name VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY auto_increment,
    product_name VARCHAR(200),
    description TEXT,
    price DECIMAL(10,2),
    category_id INT,

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY auto_increment,
    product_id INT,
    stock_quantity INT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY auto_increment,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    order_status VARCHAR(50),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY auto_increment,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    variant_id INT,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id),
    
    FOREIGN KEY(variant_id)
    REFERENCES oreder_items(variant_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY auto_increment,
    order_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);

CREATE TABLE product_variants (
	variant_id INT PRIMARY KEY auto_increment,
    size VARCHAR(10),
    color VARCHAR(50),
    additional_price DECIMAL(10,2),
    product_id INT,
    
    FOREIGN KEY(product_id)
    REFERENCES products(product_id)
);

-- Sample Values
USE Ecommerce;

-- 1. CUSTOMERS (10 rows)
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Amit', 'Sharma', 'amit@gmail.com', '9876543210'),
('Priya', 'Verma', 'priya@gmail.com', '9876543211'),
('Rahul', 'Singh', 'rahul@gmail.com', '9876543212'),
('Neha', 'Gupta', 'neha@gmail.com', '9876543213'),
('Rohit', 'Kumar', 'rohit@gmail.com', '9876543214'),
('Sneha', 'Patel', 'sneha@gmail.com', '9876543215'),
('Vikas', 'Yadav', 'vikas@gmail.com', '9876543216'),
('Pooja', 'Mishra', 'pooja@gmail.com', '9876543217'),
('Arjun', 'Jain', 'arjun@gmail.com', '9876543218'),
('Kavya', 'Reddy', 'kavya@gmail.com', '9876543219');

-- 2. ADDRESSES (10 rows)
INSERT INTO addresses (customer_id, street, city, state, postal_code, country) VALUES
(1, 'MG Road', 'Delhi', 'Delhi', '110001', 'India'),
(2, 'Brigade Road', 'Bangalore', 'Karnataka', '560001', 'India'),
(3, 'Park Street', 'Kolkata', 'West Bengal', '700001', 'India'),
(4, 'Marine Drive', 'Mumbai', 'Maharashtra', '400001', 'India'),
(5, 'Banjara Hills', 'Hyderabad', 'Telangana', '500034', 'India'),
(6, 'Anna Salai', 'Chennai', 'Tamil Nadu', '600002', 'India'),
(7, 'Sector 17', 'Chandigarh', 'Punjab', '160017', 'India'),
(8, 'Hazratganj', 'Lucknow', 'UP', '226001', 'India'),
(9, 'Civil Lines', 'Jaipur', 'Rajasthan', '302001', 'India'),
(10, 'FC Road', 'Pune', 'Maharashtra', '411004', 'India');

-- 3. CATEGORIES (10 rows)
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Footwear'),
('Books'),
('Home Appliances'),
('Beauty'),
('Sports'),
('Toys'),
('Furniture'),
('Accessories');

-- 4. PRODUCTS (10 rows)
INSERT INTO products (product_name, description, price, category_id) VALUES
('Smartphone', 'Android smartphone', 15000, 1),
('Laptop', 'Gaming laptop', 60000, 1),
('T-Shirt', 'Cotton t-shirt', 500, 2),
('Jeans', 'Denim jeans', 1200, 2),
('Running Shoes', 'Nike shoes', 3000, 3),
('Novel Book', 'Fiction novel', 400, 4),
('Microwave', 'Kitchen appliance', 7000, 5),
('Face Cream', 'Skin care product', 250, 6),
('Cricket Bat', 'Sports bat', 2000, 7),
('Sofa', 'Living room sofa', 15000, 9);

-- 5. PRODUCT VARIANTS (10 rows)
INSERT INTO product_variants (size, color, additional_price, product_id) VALUES
('M', 'Red', 0, 3),
('L', 'Blue', 50, 3),
('32', 'Black', 0, 4),
('34', 'Blue', 100, 4),
('9', 'White', 0, 5),
('10', 'Black', 100, 5),
('Standard', 'Silver', 0, 1),
('Standard', 'Black', 0, 2),
('Large', 'Brown', 200, 10),
('Medium', 'Grey', 100, 10);

-- 6. INVENTORY (10 rows)
INSERT INTO inventory (product_id, stock_quantity) VALUES
(1, 50),
(2, 30),
(3, 100),
(4, 80),
(5, 60),
(6, 120),
(7, 40),
(8, 150),
(9, 70),
(10, 20);

-- 7. ORDERS (10 rows)
INSERT INTO orders (customer_id, order_status) VALUES
(1, 'Delivered'),
(2, 'Pending'),
(3, 'Shipped'),
(4, 'Cancelled'),
(5, 'Delivered'),
(6, 'Processing'),
(7, 'Shipped'),
(8, 'Delivered'),
(9, 'Pending'),
(10, 'Processing');

-- 8. ORDER ITEMS (10 rows)
INSERT INTO order_items (order_id, product_id, variant_id, quantity, price) VALUES
(1, 1, 1, 7, 15000),
(2, 3, 2, 1, 500),
(3, 5, 1, 5, 3000),
(4, 2, 1, 8, 60000),
(5, 4, 2, 3, 1200),
(6, 6, 3, NULL, 400),
(7, 7, 1, NULL, 7000),
(8, 8, 2, NULL, 250),
(9, 9, 1, NULL, 2000),
(10, 10, 1, 9, 15000);

-- 9. PAYMENTS (10 rows)
INSERT INTO payments (order_id, payment_method, payment_status) VALUES
(1, 'UPI', 'Completed'),
(2, 'Credit Card', 'Pending'),
(3, 'Debit Card', 'Completed'),
(4, 'UPI', 'Failed'),
(5, 'Net Banking', 'Completed'),
(6, 'UPI', 'Completed'),
(7, 'Credit Card', 'Completed'),
(8, 'Debit Card', 'Completed'),
(9, 'UPI', 'Pending'),
(10, 'Net Banking', 'Completed');

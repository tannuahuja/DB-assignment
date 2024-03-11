-- Create a Database (if not exists)
CREATE DATABASE IF NOT EXISTS myDatabaseName;
USE myDatabaseName;

-- Create Product_Category Table
CREATE TABLE Product_Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    sku VARCHAR(50),
    category_id INT,
    price DECIMAL(10, 2),
    discount_id INT,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);

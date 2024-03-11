**Answer1: 
The relationship between the "Product" and "Product_Category" entities is typically a Many-to-One relationship. In this scenario:

The "Product_Category" entity acts as the "one" side of the relationship.
The "Product" entity acts as the "many" side of the relationship.
This relationship is established through the use of a foreign key in the "Product" entity. The category_id field in the "Product" entity 
is a foreign key that references the primary key (category_id) in the "Product_Category" entity. This connection ensures that each product 
can be associated with only one category, while a category can have multiple associated products.


**Answer2:
CREATE TABLE Discount (
    discount_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    discount_percent DECIMAL(5, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Product_Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

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
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id),
    FOREIGN KEY (discount_id) REFERENCES Discount(discount_id)
);


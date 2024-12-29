#Create Database
CREATE DATABASE Sales;
USE Sales;

#Create Table
CREATE TABLE Orders (
    Order_Id INT NOT NULL PRIMARY KEY,
    Customer_name VARCHAR(100) NOT NULL,
    Product_Category VARCHAR(50) NOT NULL,
    Ordered_item VARCHAR(50) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE
);

#Add a New Column
ALTER TABLE Orders ADD order_quantity INT;

#Rename the Table
RENAME TABLE Orders TO sales_orders;

#Insert Rows
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) VALUES
(1, 'Alice', 'Electronics', 'Laptop', '9876543210', 2),
(2, 'Bob', 'Furniture', 'Chair', '9876543211', 4),
(3, 'Charlie', 'Books', 'Notebook', '9876543212', 10),
(4, 'David', 'Electronics', 'Smartphone', '9876543213', 1),
(5, 'Emma', 'Clothing', 'Jacket', '9876543214', 3),
(6, 'Frank', 'Furniture', 'Table', '9876543215', 2),
(7, 'Grace', 'Electronics', 'Headphones', '9876543216', 5),
(8, 'Hank', 'Books', 'Pen', '9876543217', 20),
(9, 'Ivy', 'Clothing', 'T-Shirt', '9876543218', 7),
(10, 'John', 'Electronics', 'Monitor', '9876543219', 1);

#Retrieve Specific Columns
SELECT Customer_name, Ordered_item FROM sales_orders;

#Update a Row
UPDATE sales_orders 
SET Ordered_item = 'Gaming Laptop' 
WHERE Order_Id = 1;

#Delete the Table
DROP TABLE sales_orders;








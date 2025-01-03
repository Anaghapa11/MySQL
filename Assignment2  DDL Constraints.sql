-- Create a Database "Sales"
CREATE DATABASE Sales;
USE Sales;

-- Create the table "Orders" 
CREATE TABLE Orders (
Order_Id INT PRIMARY KEY,
Customer_name VARCHAR(100) NOT NULL,
Product_Category VARCHAR(50) NOT NULL,
Ordered_item VARCHAR(100) NOT NULL,
Contact_No varchar(10) unique);

-- Add a new column "order_quantity"
Alter table Orders Add order_quantity int;

-- Rename the table to "Sales_Orders"
rename table Orders to Sales_Orders;

desc sales_orders;

-- Insert 10 rows into the "Sales_Orders" table
insert into Sales_Orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
values 
(1, 'Jonny', 'Electronics', 'Laptop', 9876543210, 2),
(2, 'Jesus', 'Groceries', 'Apples', 9876543211, 5),
(3, 'Sunny', 'Clothing', 'T-Shirt', 9876543212, 3),
(4, 'David', 'Books', 'Fiction Novel', 9876543213, 1),
(5, 'Ajay', 'Furniture', 'Chair', 9876543214, 4),
(6, 'Frank', 'Groceries', 'Milk', 9876543215, 2),
(7, 'Grace', 'Electronics', 'Smartphone', 9876543216, 1),
(8, 'Harry', 'Clothing', 'Jeans', 9876543217, 2),
(9, 'Ivan', 'Books', 'Non-fiction Novel', 9876543218, 1),
(10, 'Jack', 'Furniture', 'Table', 9876543219, 1);

-- Retrieve customer_name and Ordered_item
Select Customer_name, Ordered_item from Sales_Orders;

-- Update a row to change Ordered_item
update sales_orders set Ordered_item = 'Computer' where Order_Id = 1;

-- Delete the "Sales_Orders" table
drop table Sales_Orders;


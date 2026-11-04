
CREATE DATABASE ShopSmart;
USE ShopSmart;

CREATE TABLE Sales (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    City VARCHAR(30),
    Category VARCHAR(30),
    Product_Name VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    Order_Date DATE,
    Payment_Mode VARCHAR(20),
    Order_Status VARCHAR(20),
    Discount DECIMAL(5,2)
);

INSERT INTO Sales VALUES
(1,'Aman','Jaipur','Electronics','Headphones',2,1500,'2025-01-05','UPI','Completed',5),
(2,'Priya','Sikar','Clothing','TShirt',3,500,'2025-01-06','Cash','Completed',10),
(3,'Rahul','Delhi','Electronics','Keyboard',1,2500,'2025-01-07','Card','Completed',0),
(4,'Neha','Jaipur','Furniture','Chair',2,3500,'2025-01-08','UPI','Completed',5),
(5,'Aman','Jaipur','Clothing','Jeans',2,1200,'2025-01-09','Cash','Cancelled',0),
(6,'Riya','Mumbai','Electronics','Mouse',4,800,'2025-01-10','UPI','Completed',10),
(7,'Karan','Sikar','Furniture','Table',1,7000,'2025-01-11','Card','Completed',5),
(8,'Priya','Sikar','Clothing','Jacket',2,2500,'2025-01-12','UPI','Completed',15),
(9,'Mohit','Delhi','Electronics','Headphones',3,1500,'2025-01-13','Cash','Completed',5),
(10,'Neha','Jaipur','Clothing','TShirt',4,500,'2025-01-14','Card','Cancelled',0),

(11,'Riya','Mumbai','Furniture','Chair',3,3500,'2025-02-01','Cash','Completed',10),
(12,'Aman','Jaipur','Electronics','Keyboard',2,2500,'2025-02-02','UPI','Completed',5),
(13,'Karan','Sikar','Clothing','Jeans',3,1200,'2025-02-03','Card','Completed',10),
(14,'Mohit','Delhi','Furniture','Table',2,7000,'2025-02-04','UPI','Completed',5),
(15,'Priya','Sikar','Electronics','Mouse',2,800,'2025-02-05','Cash','Cancelled',0),
(16,'Neha','Jaipur','Electronics','Headphones',1,1500,'2025-02-06','UPI','Completed',0),
(17,'Rahul','Delhi','Clothing','Jacket',1,2500,'2025-02-07','Card','Completed',10),
(18,'Riya','Mumbai','Clothing','TShirt',5,500,'2025-02-08','UPI','Completed',5),
(19,'Karan','Sikar','Electronics','Keyboard',3,2500,'2025-02-09','Cash','Completed',15),
(20,'Aman','Jaipur','Furniture','Chair',1,3500,'2025-02-10','Card','Cancelled',0),

(21,'Priya','Sikar','Electronics','Mouse',5,800,'2025-03-01','UPI','Completed',5),
(22,'Rahul','Delhi','Furniture','Table',1,7000,'2025-03-02','Cash','Completed',10),
(23,'Mohit','Delhi','Clothing','Jeans',4,1200,'2025-03-03','Card','Completed',5),
(24,'Neha','Jaipur','Electronics','Keyboard',2,2500,'2025-03-04','UPI','Completed',10),
(25,'Aman','Jaipur','Clothing','Jacket',2,2500,'2025-03-05','Cash','Completed',15),
(26,'Riya','Mumbai','Electronics','Headphones',3,1500,'2025-03-06','Card','Completed',5),
(27,'Karan','Sikar','Furniture','Chair',2,3500,'2025-03-07','UPI','Completed',10),
(28,'Priya','Sikar','Clothing','TShirt',6,500,'2025-03-08','Cash','Completed',5),
(29,'Mohit','Delhi','Electronics','Mouse',3,800,'2025-03-09','UPI','Cancelled',0),
(30,'Rahul','Delhi','Furniture','Table',2,7000,'2025-03-10','Card','Completed',5),

(31,'Aman','Jaipur','Electronics','Keyboard',4,2500,'2025-04-01','UPI','Completed',10),
(32,'Neha','Jaipur','Clothing','Jeans',2,1200,'2025-04-02','Cash','Completed',5),
(33,'Priya','Sikar','Furniture','Chair',3,3500,'2025-04-03','Card','Completed',10),
(34,'Riya','Mumbai','Electronics','Mouse',2,800,'2025-04-04','UPI','Completed',5),
(35,'Karan','Sikar','Clothing','Jacket',3,2500,'2025-04-05','Cash','Completed',15),
(36,'Mohit','Delhi','Electronics','Headphones',2,1500,'2025-04-06','Card','Completed',10),
(37,'Rahul','Delhi','Clothing','TShirt',3,500,'2025-04-07','UPI','Completed',5),
(38,'Aman','Jaipur','Furniture','Table',1,7000,'2025-04-08','Cash','Completed',10),
(39,'Neha','Jaipur','Electronics','Mouse',4,800,'2025-04-09','UPI','Completed',5),
(40,'Priya','Sikar','Clothing','Jeans',2,1200,'2025-04-10','Card','Cancelled',0),

(41,'Riya','Mumbai','Furniture','Table',2,7000,'2025-05-01','UPI','Completed',10),
(42,'Karan','Sikar','Electronics','Keyboard',1,2500,'2025-05-02','Cash','Completed',5),
(43,'Mohit','Delhi','Clothing','Jacket',2,2500,'2025-05-03','Card','Completed',15),
(44,'Rahul','Delhi','Electronics','Mouse',5,800,'2025-05-04','UPI','Completed',10),
(45,'Aman','Jaipur','Clothing','TShirt',4,500,'2025-05-05','Cash','Completed',5),
(46,'Priya','Sikar','Furniture','Chair',1,3500,'2025-05-06','Card','Completed',10),
(47,'Neha','Jaipur','Electronics','Headphones',3,1500,'2025-05-07','UPI','Completed',5),
(48,'Riya','Mumbai','Clothing','Jeans',3,1200,'2025-05-08','Cash','Completed',10),
(49,'Karan','Sikar','Furniture','Table',1,7000,'2025-05-09','Card','Cancelled',0),
(50,'Mohit','Delhi','Electronics','Keyboard',2,2500,'2025-05-10','UPI','Completed',5);

SELECT * FROM Sales;

SELECT COUNT(*) FROM Sales;

-- 1. Display all records from the Sales table.
SELECT * FROM Sales;

-- 2.Find the total number of orders.
select count(order_id) from sales;

-- 3.Find the total quantity of products sold across all orders.
select sum(quantity) from sales;

-- 4.Calculate the average product price.
select avg(price) from sales;

-- 5.Find the highest and lowest product price
select max(price) , min(price) from sales;

-- 6.Display all completed orders. 
select Product_Name from sales where order_status = 'completed';

-- 7.Find the total revenue from completed orders using Quantity × Price.
select sum(quantity*price) as revenue from sales where order_status = 'completed';

-- 8.Count the number of orders placed by customers from Jaipur.
select count(quantity) from sales where city = 'jaipur';

-- 9.Display orders where Quantity is greater than 2 and Price is greater than ₹1,500.
select quantity from sales where quantity > '2' and price > '1500';

-- 10.Count the number of cancelled orders. 
select count(quantity) from sales where order_status = 'Cancelled';

-- 11.Find the total revenue from all orders, including cancelled orders. 
select sum(quantity*price) as total_revenue from sales;

-- 12.Find the total revenue for each city.
select city,sum(quantity*price) as total_revenue from sales group by city;

-- 13.Display cities where total revenue is greater than 10,000.
select city,sum(quantity*price) as total_revenue from sales group by city 
having total_revenue > 10000;

-- 14.Find the number of orders in each order status
select order_status, sum(quantity) from sales group by order_status ;

-- 15 Display the average quantity for each product category.
select category, avg(quantity)  from sales group by category;

-- 16.Find the highest price in each category.
 select category,max(price) from sales group by category;
 
 -- 17. Display the total quantity sold for each product name.
 select Product_Name,sum(quantity) from sales group by Product_Name;
 
 -- 18.Show completed order count for each city.
 select city, count(order_id) from sales where order_status='completed' group by city;
 
 -- 19.Find customers who placed more than 5 orders 
 select Customer_Name, count(order_id) as total_sales from sales group by customer_name having count(order_id) > 5;
 
 -- 20.Display the top 5 most expensive orders, showing Order_ID, Product_Name, and Price.
 select
 Product_Name, order_id, price 
 from sales
 order by price desc
limit 5;

-- 21.Display all orders placed in January 2025. 
select Product_Name from sales where Order_Date = '2026-01-01';

-- 22.Find the total revenue for each product category.
select category, sum(quantity*price) from sales group by category;

-- 23.Display customers whose names start with 'A'.
select * from sales where first_name like 'A%';

select * from actor where last_name like 's%'; 

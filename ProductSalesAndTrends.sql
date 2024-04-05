/*
This SQL script provides a comprehensive analysis of retail sales data, targeting the consumer electronics sector with a focus on monthly sales performance, customer behavior, and product pricing strategies. Through a series of meticulously crafted queries, it reveals insights into sales volume and revenue generation for key products like the iPhone, tracks customer transactions to understand buying patterns, and identifies the most economical product offerings. By analyzing sales data from January and February, including specific days with high sales volume and locations with significant customer engagement, the script offers valuable perspectives on market trends, customer preferences, and the effectiveness of sales strategies. The script not only demonstrates an adept handling of SQL for data analysis but also serves as a strategic tool for businesses in the consumer electronics market to optimize their sales approaches, enhance customer satisfaction, and drive revenue growth.
*/

-- Count the total number of orders placed in January.
SELECT COUNT(orderid)
FROM JanSales;

-- Retrieve the location of orders placed on February 18, 2019, at 1:35 AM.
SELECT location
FROM FebSales
WHERE orderdate = '02/18/19 01:35';

-- Count the total number of orders for iPhones sold in January.
SELECT COUNT(orderid)
FROM JanSales
WHERE Product='iPhone';

-- List distinct account numbers of customers who made purchases in February, ensuring we're only considering those present in both customers and FebSales tables.
SELECT DISTINCT acctnum
FROM customers cust
INNER JOIN FebSales Feb
ON cust.order_id = Feb.orderid;

-- Calculate the total quantity of all products sold on February 18, 2019.
SELECT SUM(quantity)
FROM FebSales
WHERE orderdate LIKE '02/18/19%';

-- Retrieve the product with the lowest price sold in January. Limit to 1 to ensure we only get the single cheapest product.
SELECT DISTINCT product, price
FROM JanSales
ORDER BY price ASC
LIMIT 1;

-- Calculate the total revenue (sum of quantity multiplied by price) per product for January sales.
SELECT SUM(quantity) * price AS total_revenue, product
FROM JanSales
GROUP BY product;

-- Count the number of products sold and the total revenue generated from sales at a specific location in February.
SELECT COUNT(product), product, SUM(quantity) AS rev
FROM FebSales AS f, customers AS c
WHERE f.orderID = c.order_id
AND f.location = '548 Lincoln St, Seattle, WA 98101'
GROUP BY product;

-- For customers who placed orders with more than 2 items in February, calculate the average revenue (quantity*price) and count the distinct account numbers. Filters out any erroneous order IDs.
SELECT COUNT(DISTINCT cust.acctnum), AVG(quantity*price)
FROM FebSales Feb, customers cust
WHERE Feb.orderid = cust.order_id
AND Feb.Quantity > 2
AND LENGTH(orderid) = 6
AND orderid <> 'Order ID';

-- Select the order dates for orders placed between February 13, 2019, and February 18, 2019.
SELECT orderdate
FROM FebSales
WHERE orderdate BETWEEN '02/13/19 00:00' AND '02/18/19 00:00';
USE SuperstoreDB;

-- extract info
SELECT DB_NAME();
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- top 10 customers
SELECT TOP 10 * FROM [Sample - Superstore];

-- total sales
SELECT SUM([Sales]) AS total_sales
FROM [Sample - Superstore];


-- total profit
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM [Sample - Superstore];


-- top 5 customer sales
SELECT TOP 5 
    Customer_Name,
    SUM(Sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY Customer_Name
ORDER BY total_sales DESC;

-- category wise total sales
SELECT 
    Category,
    SUM(Sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY Category;

-- total profit in particular region
SELECT 
    Region,
    SUM(Profit) AS total_profit
FROM [Sample - Superstore]
GROUP BY Region;

-- monthly sales
SELECT 
    MONTH(Order_Date) AS month,
    SUM(Sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY MONTH(Order_Date)
ORDER BY month;

-- no pofit
SELECT *
FROM [Sample - Superstore]
WHERE Profit < 0;


-- high value customers
SELECT 
    Customer_Name,
    SUM(Sales) AS total_spent
FROM [Sample - Superstore]
GROUP BY Customer_Name
HAVING SUM(Sales) > 5000;


-- average order value
SELECT AVG(Sales) AS avg_order_value
FROM [Sample - Superstore];

-- product wise total profit
SELECT TOP 5 
    Product_Name,
    SUM(Profit) AS total_profit
FROM [Sample - Superstore]
GROUP BY Product_Name
ORDER BY total_profit DESC;

-- total sales for each customer segment
SELECT 
    Segment,
    SUM(Sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY Segment;



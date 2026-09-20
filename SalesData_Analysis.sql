-- Question 1: Dataset Overview
-- Retrieve the first 10 records to understand the dataset structure
SELECT TOP 10 *
FROM Retail_Sales_Company;

-- Question 2: Total Sales Performance
-- Calculate the total sales and total profit across all orders
SELECT SUM(Sales) AS TotalSales,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company;

-- Question 3: Regional Analysis
-- Find the region with the highest total sales
SELECT Region,
       SUM(Sales) AS TotalSales
FROM Retail_Sales_Company
GROUP BY Region
ORDER BY TotalSales DESC;

-- Question 4: Product Category Performance
-- Show total sales and profit by product category, ordered by highest sales
SELECT Category,
       SUM(Sales) AS TotalSales,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
GROUP BY Category
ORDER BY TotalSales DESC;

-- Question 5: Customer Segment Analysis
-- Calculate the average sales per order for each customer segment
SELECT Segment,
       AVG(Sales) AS AvgSalesPerOrder
FROM Retail_Sales_Company
GROUP BY Segment
ORDER BY AvgSalesPerOrder DESC;

-- Question 6: High-Value Orders
-- Retrieve orders where sales are greater than 1000, sorted by sales descending
SELECT *
FROM Retail_Sales_Company
WHERE Sales > 1000
ORDER BY Sales DESC;

-- Question 7: Top Performing Sub-Categories
-- Identify the top 5 sub-categories by total profit
SELECT TOP 5 Sub_Category,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
GROUP BY Sub_Category
ORDER BY TotalProfit DESC;

-- Question 8: Profitability Check
-- Find product categories with total profit greater than 10000
SELECT Category,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
GROUP BY Category
HAVING SUM(Profit) > 10000
ORDER BY TotalProfit DESC;
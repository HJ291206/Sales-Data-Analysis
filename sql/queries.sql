-- 1. Total Revenue
SELECT SUM(Sales) AS Total_Revenue
FROM sales_data;

-- 2. Top 10 Products
SELECT Product_Name, SUM(Sales) AS Revenue
FROM sales_data
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

-- 3. Loss Making Products
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product_Name
HAVING Total_Profit < 0;

-- 4. Best Performing Regions
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region;

-- 5. Discount vs Profit
SELECT Discount, AVG(Profit) AS Avg_Profit
FROM sales_data
GROUP BY Discount
ORDER BY Discount;


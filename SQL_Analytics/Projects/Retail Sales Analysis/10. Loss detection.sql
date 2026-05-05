SELECT
	Product_Name,
    Category,
    Sub_Category,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY Product_Name, Category, Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit
LIMIT 10;
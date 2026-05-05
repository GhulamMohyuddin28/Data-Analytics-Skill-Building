SELECT
	Product_Name,
    Category,
    COUNT(*) AS Total_Order,
    ROUND(SUM(Sales),2) AS Total_Revenue,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY Product_Name, Category
ORDER BY Total_Revenue DESC
LIMIT 10;
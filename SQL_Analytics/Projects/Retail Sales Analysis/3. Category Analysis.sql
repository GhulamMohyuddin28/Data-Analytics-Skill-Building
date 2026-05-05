SELECT 
	Category,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(AVG(Sales),2) AS AVG_Order_Value,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS AVG_Profit_Margin
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;
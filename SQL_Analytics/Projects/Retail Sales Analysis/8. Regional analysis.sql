SELECT 
	Region, State,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(AVG(Discount) * 100, 2) AS Avg_Discount
FROM sales_data
GROUP BY Region, State
ORDER BY Region, Total_Sales DESC;
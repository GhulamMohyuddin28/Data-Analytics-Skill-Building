SELECT 
	Segment,
    COUNT(DISTINCT Customer_ID) AS Unique_Customers,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND(SUM(Profit),2) AS Total_Profit
    
FROM sales_Data
GROUP BY Segment
ORDER BY Total_Sales DESC;
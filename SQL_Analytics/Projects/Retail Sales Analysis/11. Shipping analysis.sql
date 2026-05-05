SELECT 
    Ship_Mode,
    COUNT(*) AS Total_Shipments,
    ROUND(AVG(DATEDIFF(Ship_Date, Order_Date)), 1) AS Avg_Days_To_Ship,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Ship_Mode
ORDER BY Avg_Days_To_Ship;
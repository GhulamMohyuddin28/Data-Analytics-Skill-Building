SELECT 
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    DATE_FORMAT(Order_Date, '%b %Y') AS Month_Label,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Monthly_Revenue,
    ROUND(SUM(Profit), 2) AS Monthly_Profit
FROM sales_data
GROUP BY 
    YEAR(Order_Date), 
    MONTH(Order_Date),
    DATE_FORMAT(Order_Date, '%b %Y')
ORDER BY Order_Year;
SELECT 
    Category,
    Sub_Category,
    ROUND(SUM(sales), 2) AS total_sales,
    RANK() OVER (
        PARTITION BY Category 
        ORDER BY SUM(Sales) DESC
    ) AS rank_within_category
FROM sales_data
GROUP BY Category, Sub_Category
ORDER BY Category, rank_within_category;
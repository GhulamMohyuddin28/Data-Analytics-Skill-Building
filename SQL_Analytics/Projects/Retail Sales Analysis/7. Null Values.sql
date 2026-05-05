-- Check NULL values in key columns
SELECT
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_profit,
    SUM(CASE WHEN Customer_Name IS NULL THEN 1 ELSE 0 END) AS null_customer
FROM sales_data;


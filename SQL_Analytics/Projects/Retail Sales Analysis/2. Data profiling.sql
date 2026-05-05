-- How many record do we have
SELECT COUNT(*) AS Total_Records
FROM sales_data;

-- What date range does our data cover
SELECT MIN(Order_Date) AS Start_Date, MAX(Order_Date) AS End_Date
FROM sales_data;

-- How many unique Customers are?
SELECT COUNT(DISTINCT Customer_ID) AS Uniqe_Customers
FROM sales_data;

-- How many unique products are?
SELECT COUNT(DISTINCT Product_ID) AS Unique_Products 
FROM sales_data;
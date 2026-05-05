-- Check duplicate orders
SELECT Order_ID, COUNT(*) AS occurrences
FROM sales_data
GROUP BY Order_ID
HAVING COUNT(*) > 1
ORDER BY occurrences DESC
LIMIT 10;
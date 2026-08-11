-- =====================================
-- FreshMart SQL Portfolio Project
-- Common Table Expressions
-- =====================================

WITH customer_sales AS (
    SELECT
        customer_name,
        ROUND(SUM(sales),2) AS total_sales,
        ROUND(SUM(profit),2) AS total_profit,
        COUNT(DISTINCT order_id) AS total_orders
    FROM sales
    GROUP BY customer_name
)

SELECT *
FROM customer_sales
ORDER BY total_sales DESC
LIMIT 5;
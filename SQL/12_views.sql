-- =====================================
-- FreshMart SQL Portfolio Project
-- SQL Views
-- =====================================

CREATE OR REPLACE VIEW customer_sales_summary AS
SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY customer_name;
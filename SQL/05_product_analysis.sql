-- =====================================
-- FreshMart SQL Portfolio Project
-- Product Analysis
-- =====================================

SELECT
	product_name,
    category,
	ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name, category
ORDER BY total_sales DESC
LIMIT 10;
	
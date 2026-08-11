-- =====================================
-- FreshMart SQL Portfolio Project
-- Category Analysis
-- =====================================

SELECT 
	category,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit,
	SUM(quantity) AS total_quantity,
	ROUND((SUM(profit)/SUM(sales))* 100,2) AS profit_margin
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
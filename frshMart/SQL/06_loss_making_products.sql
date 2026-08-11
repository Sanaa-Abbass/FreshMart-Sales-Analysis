-- =====================================
-- FreshMart SQL Portfolio Project
-- Loss-Making Products
-- =====================================


SELECT
    product_name,
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name, category
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;
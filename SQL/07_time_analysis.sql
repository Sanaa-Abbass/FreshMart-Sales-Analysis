-- =====================================
-- FreshMart SQL Portfolio Project
-- Time Series Analysis
-- =====================================

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,
    month;



-- ==========================================

SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(sales),2) AS total_sales
FROM sales
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY total_sales DESC;
-- =====================================
-- FreshMart SQL Portfolio Project
-- KPI Analysis
-- =====================================

-- Count total rows
SELECT COUNT(*) AS total_rows
FROM sales;

-- Preview first 10 records
SELECT *
FROM sales
LIMIT 10;

-- Check for missing values
SELECT
    COUNT(*) AS total_rows,
    COUNT(customer_id) AS customer_ids,
    COUNT(order_id) AS order_ids,
    COUNT(sales) AS sales_values,
    COUNT(profit) AS profit_values
FROM sales;

-- KPI Dashboard
SELECT
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id),2) AS average_order_value,
    ROUND((SUM(profit) / SUM(sales))*100,2) AS profit_margin
FROM sales;
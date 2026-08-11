-- =====================================
-- FreshMart SQL Portfolio Project
-- PARTITION BY
-- =====================================

SELECT
    category,
    product_name,
    ROUND(SUM(sales),2) AS total_sales,

    RANK() OVER(
        PARTITION BY category
        ORDER BY SUM(sales) DESC
    ) AS category_rank

FROM sales
GROUP BY
    category,
    product_name
ORDER BY
    category,
    category_rank;
# FreshMart Sales Analysis

## Project Overview

This project analyzes FreshMart sales data to understand business performance, profitability, customer behavior, product performance, and regional trends.

The goal is to identify where the business is performing well, where it is losing money, and what areas may require further investigation.

## Business Questions

The analysis focuses on questions such as:

- What are the total sales and total profit?
- What is the average order value?
- What is the overall profit margin?
- Which regions generate the highest sales and profit?
- Which regions have weaker profitability?
- Which product categories perform best?
- Which customers generate the most sales?
- Which products have the lowest profit?
- Where is the business making and losing money?

## Dataset

The dataset contains sales transaction information including:

- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Customer Name
- Segment
- Country
- City
- State
- Postal Code
- Region
- Product ID
- Category
- Sub-Category
- Product Name
- Sales
- Quantity
- Discount
- Profit

## Tools & Technologies

- Microsoft Excel
- Excel Tables
- PivotTables
- Excel formulas
- Data cleaning
- PostgreSQL / SQL
- Power BI

## Data Cleaning

The data preparation process included:

- Checking for missing values
- Checking for duplicate records
- Reviewing data types
- Converting Sales to a numeric/currency format
- Checking date formats
- Calculating shipping days
- Checking negative sales values
- Reviewing discount values
- Checking duplicate transactions

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Total Orders | 5,009 |
| Total Quantity Sold | 37,873 |
| Average Order Value | $458.61 |
| Profit Margin | 12.47% |

## Regional Analysis

The regional analysis compares sales, profit, and profit margin across Central, East, South, and West.

### Key Findings

- West has the highest sales.
- West also generates the highest profit.
- West has the highest profit margin.
- South has weaker overall performance compared with the other regions.
- Central has the lowest profit margin among the four regions.

These results indicate that the business should investigate why profitability differs significantly between regions.

## Category Analysis

Technology is the strongest-performing category in terms of sales and profit.

Furniture requires additional attention because of its relatively low profit margin.

## Customer Analysis

The analysis also identifies the top customers by sales to determine which customers contribute most to revenue.

## Product Analysis

Products were analyzed based on sales and profit to identify high-performing and low-performing products.

## Recommendations

Based on the initial analysis:

1. Investigate the causes of lower profitability in weaker regions.
2. Analyze discount levels and their effect on profit margins.
3. Investigate low-profit products and product categories.
4. Identify opportunities to increase sales in high-performing regions.
5. Continue monitoring regional and product-level profitability.

## Project Structure

```text
FreshMart-Sales-Analysis/
│
├── data/
│   └── FreshMarts.xlsx
|   └── freshMarts_sales.csv
│   └── KPI Dashboard.csv
|
├── SQL/
│   └── 01_kpi_analysis.sql
│   └── 02_region_analysis.sql
│   └── 03_category_analysis.sql
│   └── 04_customer_analysis.sql
│   └── 05_product_analysis.sql
│   └── 06_loss_making_products.sql
│   └── 07_time_analysis.sql
│   └── 10_partition_by.sql
│   └── 11_cte_analysis.sql
│   └── 12_views.sql
│
├── dashboard/
│   └── Sales_Analysis_Dashboard.pbix
│
├── Images/
│   └── dashboard-preview.png
│
└── README.md
```

## Future Improvements

Future versions of this project will include:

- Additional SQL analysis
- Power BI dashboard
- Interactive visualizations
- Additional customer and product analysis
- Business recommendations based on the combined analysis
# Exploratory Sales Data Analysis Using SQL

## Project Overview
An exploratory sales data analysis project focused on querying retail transactional datasets using SQL (T-SQL). The analysis evaluates total sales performance, profit margins, regional market concentration, product category profitability, customer segment ordering habits, and high-value transaction patterns to inform executive decisions.

---

## Key Performance Metrics
* **Total Sales:** $2,297,200.86
* **Total Profit:** $286,817.02
* **Top Performing Region:** West Region ($725,457.82 Sales)
* **Most Profitable Category:** Technology ($145,454.95 Profit / $836,154.03 Sales)
* **Highest Average Sales Per Order Segment:** Home Office ($240.97 Avg)
* **Top Sub-Category by Profit:** Copiers ($55,617.82 Profit)

---

## Technical Skills & SQL Concepts Applied
* **Data Aggregation & Metrics:** `SUM()`, `AVG()`, `COUNT()`
* **Grouping & Filtering Logic:** `GROUP BY`, `HAVING`, `WHERE`
* **Sorting & Ranking:** `ORDER BY`, `TOP N` filtering
* **Business Analysis & Pattern Recognition:** Financial summarization, segment profiling, and profit threshold checks

---

## SQL Queries & Business Analysis

### 1. Dataset Exploration
Retrieving initial sample records to inspect schema columns, data types, and order attributes.

```sql
SELECT TOP 10 *
FROM Retail_Sales_Company;

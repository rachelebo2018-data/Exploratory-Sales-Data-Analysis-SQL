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

# Exploratory Sales Data Analysis Using SQL

## Executive Summary
This project delivers a comprehensive Exploratory Data Analysis (EDA) on retail sales transactions using SQL. The objective is to evaluate revenue streams, profit margins, regional market dynamics, category performance, and customer segment purchasing behavior. By querying raw transactional records, this analysis isolates core revenue drivers and operational risks to guide targeted marketing, inventory allocation, and pricing strategies.

---

## Dataset & Database Structure
* **Database Table:** `Retail_Sales_Company`
* **Core Metrics:** `Sales`, `Profit`, `Quantity`, `Discount`
* **Categorical Dimensions:** `Region`, `Category`, `Sub_Category`, `Segment`
* **Transaction Identifiers:** `Order_ID`, `Customer_ID`

---
## SQL Queries & Business Analysis

### 1. Dataset Exploration
Retrieving initial sample records to inspect schema columns, data types, and order attributes.

```sql
SELECT TOP 10 *
FROM Retail_Sales_Company;
```


## 2. Overall Business Financial Health
Calculates gross sales revenue and net profit across all recorded orders.

```sql
SELECT SUM(Sales) AS TotalSales,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
```
* **Total Sales:** $2,297,200.86
* **Total Profit:** $286,817.02
* **Overall Profit Margin:** ~12.49%
* **Insight:** The business maintains steady total revenue, but profit margins vary significantly depending on product mix and regional overhead.


## 3. Regional Performance Breakdown
Ranks sales performance across key geographic markets to identify high-density revenue zones.

```sql
SELECT Region,
       SUM(Sales) AS TotalSales
FROM Retail_Sales_Company
GROUP BY Region
ORDER BY TotalSales DESC;
```
* **West:** $725,457.82 (Top Performing Region)
* **East:** $678,781.24
* **Central:** $501,239.89
* **South:** $391,721.91
* **Insight:** The West and East regions combined contribute over 61% of total revenue. Strategic logistics and inventory fulfillment should prioritize these markets to prevent stockouts.

## 4. Product Category Performance
Evaluates revenue and profitability generated across major product categories.

```sql
SELECT Category,
       SUM(Sales) AS TotalSales,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
GROUP BY Category
ORDER BY TotalSales DESC;
```
* **Technology:** Sales: $836,154.03 | Profit: $145,454.95 (Margin: ~17.39%)
* **Furniture:** Sales: $741,999.79 | Profit: $18,871.27 (Margin: ~2.54%)
* **Office Supplies:** Sales: $719,047.03 | Profit: $122,490.80 (Margin: ~17.03%)
* **Insight:** While Furniture accounts for significant sales volume ($741.9K), its profit margin is extremely weak (2.54%), indicating potential issues with high shipping costs, steep discounting, or low product margins. Technology and Office Supplies drive true net profitability.

## 5. Customer Segment Analysis
Measures purchasing power and basket size by calculating average sales value per order across customer segments.

```sql
SELECT Segment,
       AVG(Sales) AS AvgSalesPerOrder
FROM Retail_Sales_Company
GROUP BY Segment
ORDER BY AvgSalesPerOrder DESC;
```
* **Home Office:** $240.97 per order
* **Corporate:** $233.82 per order
* **Consumer:** $223.73 per order
* **Insight:** Home Office buyers place higher-value individual orders compared to general Consumers, making them prime targets for bulk purchasing incentives and business loyalty programs.

## 6. High-Value Transaction Isolation
Identifies priority transactions with order values exceeding $1,000 to analyze premium spending trends.

```sql
SELECT *
FROM Retail_Sales_Company
WHERE Sales > 1000
ORDER BY Sales DESC;
```
* **Insight:** High-value orders represent key revenue spikes. Maintaining specialized VIP customer service and proactive follow-ups for these enterprise clients is critical for revenue retention.

## 7. Top 5 Sub-Categories by Profitability
Isolates top-tier sub-categories driving net business returns.

```sql
SELECT TOP 5 Sub_Category,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
GROUP BY Sub_Category
ORDER BY TotalProfit DESC;

```
1. Copiers: $55,617.82
2. Phones: $44,515.73
3. Accessories: $41,936.64
4. Paper: $34,053.57
5. Binders: $30,221.76
Insight: Copiers, Phones, and Accessories lead overall profitability. Copiers in particular generate outstanding returns relative to sales volume.

## 8. Category Profitability Filter Threshold (> $10,000)
Validates major profit centers by filtering out underperforming or net-loss product lines.

```sql
SELECT Category,
       SUM(Profit) AS TotalProfit
FROM Retail_Sales_Company
GROUP BY Category
HAVING SUM(Profit) > 10000
ORDER BY TotalProfit DESC;
```
* **Technology:** $145,454.95
* **Office Supplies:** $122,490.80
* **Furniture:** $18,871.27
* **Insight:** All three broad categories cross the $10,000 profit threshold, but Furniture remains on the lower margin boundary.

---

## Strategic Recommendations
* **Address Furniture Category Profit Margins:** Investigate root causes behind Furniture's low profitability (2.54% margin). Re-evaluate supplier costs, reduce aggressive promotional discounts, and optimize bulky shipping fees.
* **Capitalize on West & East Regional Demand:** Allocate higher inventory reserves to West ($725.4K) and East ($678.7K) regional distribution centers to capitalize on established market demand.
* **Target High-Value Home Office Accounts:** Implement personalized B2B marketing campaigns and volume discounts targeted at Home Office and Corporate accounts to boost Average Order Value (AOV).
* **Expand High-Margin Sub-Categories:** Increase promotional visibility and shelf-space for high-margin tech accessories, copiers, and office essentials (Paper/Binders).

---

## Author
**Ebo Rachel Adebimpe**  
*Data Analyst*

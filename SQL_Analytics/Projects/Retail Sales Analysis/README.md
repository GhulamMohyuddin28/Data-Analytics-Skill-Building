# Retail Sales Analysis | MySQL

## Project Overview
End-to-end SQL analysis of 9,694 retail 
transactions from a US superstore covering 
4 years (2014–2017). Covers data quality 
checks, aggregation analysis, regional 
breakdown, customer segmentation, loss 
detection, shipping performance, window 
functions, and nested subqueries.

## Database
- **Tool:** MySQL Workbench 8.0 CE
- **Database:** superstore_db
- **Table:** sales_data
- **Rows:** 9,694
- **Columns:** 21
- **Date Range:** Jan 2014 — Dec 2017

## Dataset
- **Source:** Superstore Sales Dataset (Kaggle)
- **Unique Customers:** 793
- **Unique Products:** 1,812
- **Categories:** Furniture, Office Supplies,
  Technology

---

## Query Files

| File | Purpose | Key Concept |
|---|---|---|
| 01_Database_Setup.sql | Create DB and table schema | DDL |
| 02_Data_Profiling.sql | Row count, date range, uniques | COUNT, MIN, MAX |
| 03_Category_Analysis.sql | Revenue and margin by category | GROUP BY, ROUND |
| 04_Top_Products.sql | Top 10 products by revenue | ORDER BY, LIMIT |
| 05_Monthly_Trends.sql | Monthly revenue 2014–2017 | DATE_FORMAT, YEAR |
| 06_Duplicate_Orders.sql | Detect duplicate records | HAVING COUNT > 1 |
| 07_Null_Values.sql | NULL check all key columns | CASE WHEN, SUM |
| 08_Regional_Analysis.sql | Revenue and profit by region | Multi-column GROUP BY |
| 09_Customer_Segments.sql | Segment performance | COUNT DISTINCT |
| 10_Loss_Detection.sql | Loss-making products | HAVING SUM < 0 |
| 11_Shipping_Analysis.sql | Shipping mode performance | DATEDIFF, AVG |
| 12_Window_Functions.sql | Rank sub-categories | RANK() OVER PARTITION BY |

---

## Key Findings

### Category Performance
| Category | Revenue | Orders | Profit Margin |
|---|---|---|---|
| Technology | $835,900 | 1,839 | 17.39% |
| Furniture | $733,047 | 2,074 | 2.32% |
| Office Supplies | $703,502 | 5,781 | 17.13% |

### Customer Segments
| Segment | Customers | Revenue | Avg Order |
|---|---|---|---|
| Consumer | 409 | $1,150,166 | $228 |
| Corporate | 236 | $696,604 | $238 |
| Home Office | 148 | $425,679 | $246 |

### Shipping Modes
| Mode | Shipments | Avg Days |
|---|---|---|
| Same Day | 527 | 0.0 |
| First Class | 1,501 | 2.2 |
| Second Class | 1,886 | 3.2 |
| Standard Class | 5,780 | 5.0 |

### Top Revenue Product
Canon imageCLASS 2200 Advanced Copier
→ $61,599 across 5 orders

### Biggest Loss-Making Product
Cubify CubeX 3D Printer Double Head
→ -$8,879 total loss

### Window Function Result
Chairs ranked #1 in Furniture ($328,449)
Storage ranked #1 in Office Supplies ($216,803)

---

## Business Insights

1. **Furniture margin problem** — $733K revenue
   but only 2.32% profit margin. Pricing or
   cost structure needs review.

2. **Central region discounting issue** — 
   Texas leads in orders but runs -$25,534
   profit. Illinois at 38.79% avg discount
   is destroying regional margins.

3. **Consumer segment dominates** — 50% of
   total revenue from Consumer segment despite
   lower avg order value than Home Office.

4. **Standard Class overloaded** — handles 60%
   of all shipments at 5 days average. Premium
   shipping options underutilized.

5. **Technology is most efficient** — highest
   revenue AND highest margin at 17.39%.

---

## SQL Concepts Used
SELECT | FROM | WHERE | GROUP BY |
ORDER BY | HAVING | LIMIT | ROUND |
SUM | AVG | COUNT | COUNT DISTINCT |
MIN | MAX | IS NULL |
YEAR() | MONTH() | DATE_FORMAT() |
DATEDIFF() | RANK() OVER () |
PARTITION BY | IN operator

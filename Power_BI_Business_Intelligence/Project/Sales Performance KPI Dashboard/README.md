# Sales Performance KPI Dashboard | Power BI / DAX

## Overview
An executive sales performance dashboard built in Power BI
analyzing 9,994 retail transactions across 4 years (2014–2017).
Features a Star Schema data model, 9 DAX measures including
time intelligence, and 3 interactive slicers for self-service
reporting — replacing a manual Excel reporting process.

---

## Dataset
- **Source:** Superstore Sales Dataset (Kaggle)
- **Records:** 9,994 transactions
- **Period:** January 2014 to December 2017
- **Columns:** 21 fields including Sales, Profit, Category,
  Region, Segment, Ship Mode, Order Date

---

## Data Model — Star Schema
[dim_date]
    |
| Table | Type | Purpose |
|---|---|---|
| fact_sales | Fact Table | All sales transactions — central table |
| dim_date | Dimension | Date, Year, Month, Quarter, Weekday |
| dim_Products | Dimension | Category, Sub-Category, Product details |

**Why Star Schema:** Power BI's DAX time intelligence functions
(TOTALYTD, SAMEPERIODLASTYEAR) require a properly connected
date dimension to work correctly. Without this structure,
month-over-month and YTD calculations would fail or return
wrong results.

---

## DAX Measures Built

| Measure | DAX Function Used | Purpose |
|---|---|---|
| Total Sales | SUM | Base revenue KPI |
| Total Profit | SUM | Profitability KPI |
| Total Orders | DISTINCTCOUNT | Unique order count |
| Avg Order Value | DIVIDE | Revenue per order |
| Profit Margin % | DIVIDE | Margin percentage |
| YTD Sales | TOTALYTD | Year-to-date revenue |
| Prev Month Sales | DATEADD | Previous month baseline |
| MoM Growth % | DIVIDE + DATEADD | Month-over-month change |
| Sales SPLY | SAMEPERIODLASTYEAR | Same period last year |

---

## Dashboard Features

**KPI Cards (Top Row)**
- Total Revenue
- Total Profit
- Total Orders
- Profit Margin %
- MoM Growth %

**Charts**
- Clustered Bar Chart — Revenue by Category
- Line Chart — Monthly Revenue Trend by Year (2014–2017)
- Line Chart — Year-to-Date Revenue Trend by Year

**Table**
- Sub-Category performance breakdown showing
  Sales, Profit, and Profit Margin %

**Interactive Slicers**
- Filter by Year (2014, 2015, 2016, 2017)
- Filter by Category (Furniture, Office Supplies, Technology)
- Filter by Region (Central, East, South, West)

All slicers filter every visual on the page simultaneously.

---

## Key Business Insights

1. **Technology is the profit engine** — $835,900 revenue
   at 17.39% margin despite fewer orders than Office Supplies.

2. **Furniture margin problem** — $733,047 revenue but only
   2.32% profit margin. High sales volume masking a serious
   pricing or cost structure issue.

3. **Revenue grew consistently** — YTD curves show upward
   trajectory across all 4 years with Q4 as the peak quarter.

4. **MoM growth peaks in Q4** — November and December
   consistently show the strongest month-over-month gains
   across all years.

---

## Tools Used
Power BI Desktop | DAX | Power Query | Star Schema Modeling

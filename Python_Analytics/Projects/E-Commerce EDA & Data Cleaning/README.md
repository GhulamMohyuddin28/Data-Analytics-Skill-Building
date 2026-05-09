# E-Commerce EDA & Data Cleaning | Python / Pandas

## Overview
End-to-end data cleaning and exploratory analysis of
9,994 retail e-commerce transactions using Python and
Pandas. Produces 6 business-focused visualizations
revealing category pricing patterns, sales distributions,
and the quantified impact of discounting on profitability.

---

## Dataset
- **Source:** Superstore Sales Dataset (Kaggle)
- **Original Records:** 9,994 transactions
- **Columns:** 21 original + 5 engineered features
- **Final Shape:** 9,994 rows × 27 columns
- **Period:** January 2014 to December 2017
- **Total Revenue:** $2,297,200.65

---

## Tools & Libraries
Python 3 | Pandas | NumPy | Matplotlib | Seaborn |
Jupyter Notebook

---

## Project Structure  
```text
04_Python_Analytics/
└── Ecommerce_EDA_Cleaning_Pipeline/
├── ecommerce_eda_cleaning.ipynb
├── Superstore.xlsx
├── superstore_cleaned.csv
├── superstore_cleaned.xlsx
├── viz1_sales_distribution.png
├── viz2_category_performance.png
├── viz3_profit_boxplot.png
├── viz4_correlation_heatmap.png
├── viz5_time_trends.png
├── viz6_discount_profit.png
└── README.md
```
---

## Data Cleaning Applied

| Step | Action | Method | Result |
|---|---|---|---|
| Date types | Verified datetime format | pd.to_datetime() | Both date cols confirmed |
| Null check | Scanned all 21 columns | isnull().sum() | Zero nulls found |
| Duplicates | Full row deduplication | drop_duplicates() | Zero duplicates |
| Dtype normalization | Forced numeric types | pd.to_numeric() | float64 confirmed |
| Rounding | 2 decimal precision | .round(2) | Financial cols cleaned |

---

## Feature Engineering

| New Column | Source | Method |
|---|---|---|
| Order Year | Order Date | .dt.year |
| Order Month | Order Date | .dt.month |
| Order Month Name | Order Date | .dt.strftime('%b') |
| Order Quarter | Order Date | .dt.quarter |
| Days To Ship | Ship Date - Order Date | .dt.days |
| Discount Tier | Discount | pd.cut() |

---

## 6 Visualizations

| # | Type | What It Reveals |
|---|---|---|
| 1 | Histogram | Sales right-skewed — median $54 vs mean $230 |
| 2 | Bar Chart | Technology leads margin at 17.4%, Furniture trails at 2.49% |
| 3 | Box Plot | 1,871 orders (18.7%) are loss-making — outliers visible |
| 4 | Heatmap | Discount negatively correlated with Profit (-0.22) |
| 5 | Line + Bar | Revenue grew 51.4% from 2014 to 2017, Q4 peaks every year |
| 6 | Scatter + Bar | High discounts (40%+) average -$106.70 profit per order |

---

## Key Business Findings

**Finding 1 — Sales Distribution Is Heavily Right-Skewed**
Median order value is $54 but mean is $230. A small number
of large orders inflate the average. Marketing strategy
should focus on increasing order frequency rather than
chasing higher order values.

**Finding 2 — Furniture Has A Hidden Margin Problem**
Furniture generates $742,000 revenue — the second highest —
but only 2.49% profit margin. Technology generates $836,154
at 17.4% margin. Furniture's pricing or cost structure
requires an urgent review.

**Finding 3 — Discounting Destroys Profitability**
No discount orders: average profit $66.90.
Low discount (1-20%): average profit $26.50.
Medium discount (21-40%): average profit -$77.86.
High discount (41%+): average profit -$106.70.
Recommendation: Set a hard maximum discount cap of 20%.

**Finding 4 — 18.7% Of All Orders Lose Money**
1,871 out of 9,994 orders result in negative profit.
Worst single-order loss: -$6,599.98.
These are concentrated in high-discount Furniture orders.

**Finding 5 — Revenue Grew 51.4% From 2014 To 2017**
2014: $484,247 → 2015: $470,532 → 2016: $609,206 →
2017: $733,215. Q4 (Sep-Nov) is the peak season every year.
Recommendation: Scale inventory and staffing by 30% in
October through December.

---

## Pandas Concepts Demonstrated
```text
pd.read_excel() | df.shape | df.dtypes | df.describe()
df.isnull().sum() | df.duplicated() | df.drop_duplicates()
pd.to_datetime() | pd.to_numeric() | .round()
.dt.year | .dt.month | .dt.quarter | .dt.days
df.groupby().agg() | pd.cut()
plt.hist() | plt.bar() | plt.scatter()
sns.heatmap() | df.boxplot()
plt.savefig() | df.to_csv() | df.to_excel()
```

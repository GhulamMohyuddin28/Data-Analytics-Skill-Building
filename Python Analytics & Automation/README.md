# Python Analytics & Automation

This module covers Python for data analysis using Pandas,
NumPy, Matplotlib, and Seaborn. Focus is on data cleaning,
exploratory data analysis, visualization, and automated
reporting — the core Python skills required for a junior
data analyst role.

---

## Module Structure
```text
Python_Analytics/
├── Pandas_Data_Cleaning/
│   └── README.md
│
└── Projects/
└── Ecommerce_EDA_Cleaning_Pipeline/
├── ecommerce_eda_cleaning.ipynb
├── Superstore.xlsx
├── superstore_cleaned.csv
├── viz1_sales_distribution.png
├── viz2_category_performance.png
├── viz3_profit_boxplot.png
├── viz4_correlation_heatmap.png
├── viz5_time_trends.png
├── viz6_discount_profit.png
└── README.md
```
---

## Libraries Used

| Library | Purpose |
|---|---|
| Pandas | Data loading, cleaning, transformation, aggregation |
| NumPy | Numerical operations and array handling |
| Matplotlib | Base charting and figure customization |
| Seaborn | Statistical visualizations and heatmaps |
| Jupyter Notebook | Interactive analysis and documentation |

---

## Concepts Covered In This Module

**Data Loading**
- pd.read_excel, pd.read_csv
- Inspecting shape, dtypes, head, describe

**Data Cleaning**
- Null detection — isnull().sum()
- Null imputation — fillna with median and mode
- Dtype normalization — pd.to_datetime, pd.to_numeric
- Deduplication — drop_duplicates()
- Rounding — .round()
- Feature engineering from date columns

**Exploratory Data Analysis**
- Univariate analysis — distributions, histograms
- Bivariate analysis — scatter plots, group comparisons
- Correlation analysis — heatmaps
- Time series analysis — monthly and yearly trends
- Outlier detection — box plots

**Visualization**
- Histogram — sales distribution
- Bar chart — category performance
- Box plot — profit distribution and outliers
- Heatmap — correlation between variables
- Line chart — time series trends
- Scatter plot — discount vs profit relationship

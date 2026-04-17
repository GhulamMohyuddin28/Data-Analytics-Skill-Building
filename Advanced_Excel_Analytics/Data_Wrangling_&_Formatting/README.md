# 🛒 E-Commerce Data Cleaning & Standardization

## 📌 Project Overview
This project demonstrates the end-to-end data cleaning and standardization process for a messy, unstructured e-commerce sales dataset. The goal was to transform raw data containing formatting errors, missing values, and logical inconsistencies into a pristine, dashboard-ready format.

## 🛠️ Tools Used
* **Microsoft Excel:** Data profiling, imputation, and mathematical formatting.
* **Key Functions/Techniques:** `AVERAGEIFS`, `IFERROR`, `ABS`, `TRIM`, `PROPER`, Text-to-Columns, Conditional Imputation, and Circular Reference resolution.

## 🧹 Key Data Transformations
1. **Data Type Parsing (Dates):** Standardized mixed string and serial date formats into a uniform `Short Date` format to enable accurate time-series analysis.
2. **Handling Missing & Invalid Categorical Data:** Nullified garbage text (e.g., "NaN", "abc") and imputed missing categories using constant placeholders (e.g., "Unknown") to preserve row integrity for revenue calculation.
3. **Advanced Numerical Imputation (Quantity & Price):** * Corrected illogical negative quantities using absolute value constraints.
   * Handled missing Unit Prices using Product-Level Mean Imputation (`AVERAGEIFS`), ensuring averages were based exclusively on single-quantity orders to prevent bulk-pricing skew.
4. **Data Integrity & Recalculation:** Wiped and recalculated the Gross Total column using absolute cleaned values (Quantity × Unit Price) to eliminate hardcoded calculation errors.

## 📸 Visual Proof: Before & After

**1. Fixing Unstructured Dates & Strings**
![Insert your screenshot of the messy dates here]
*(Caption: Using Text-to-Columns to force Excel's parsing engine to recognize text strings as valid date serial numbers.)*

**2. Handling Missing Financial Data**
![Insert your screenshot of the formula fixing the price here]
*(Caption: Using AVERAGEIFS to impute unit prices without triggering Circular Reference errors.)*

## 🚀 Next Steps
This dataset is now mathematically and structurally sound, ready for import into Power BI for data modeling and interactive dashboard creation.

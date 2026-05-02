# Sales Data Cleaning & Summary Dashboard | Advanced Excel

## Project Overview
A supermarket chain operating across three branches 
needed their raw transactional data cleaned, 
standardized, and analyzed to surface category-level 
performance trends for management reporting.

## Dataset
- Source: Supermarket Sales Dataset
- Raw Records: 1,000+ transactions
- Columns: 17 fields including Invoice ID, Branch, 
  Product Line, Sales, Payment, Rating
- Date Range: January 2019 to March 2019
- Problems Present in Raw Data:
  - Inconsistent capitalization in Branch, 
    Customer Type, and Payment columns
  - Trailing and leading spaces in text fields
  - 5 blank rows scattered through dataset
  - 20 duplicate invoice records
  - Floating point precision in financial columns
  - Redundant Gross Margin column 
    (identical value in all rows)

## Tools Used
Microsoft Excel 365

## What Was Done

### 1. Data Cleaning
- Removed 5 blank rows using Go To Special
- Removed 20 duplicate records using Invoice ID 
  as unique key
- Standardized Branch, Customer Type, and Payment 
  columns using TRIM and PROPER functions
- Fixed Credit card capitalization using SUBSTITUTE
- Rounded all financial columns to 2 decimal places
- Removed redundant Gross Margin % column
- Applied Data Validation dropdowns to Branch, 
  Customer Type, Payment, and Gender columns
- Documented all 8 cleaning steps in Cleaning Log

### 2. Product Reference Sheet
- Built a Product Reference table with Category 
  Code and Category Group for all 6 product lines
- Formatted as named Excel Table (ProductTable)

### 3. XLOOKUP Integration
- Added Category Code and Category Group columns 
  to Working Data using XLOOKUP
- Pulls values dynamically from Product Reference 
  sheet across two sheets

### 4. Summary Analysis
- Sales by Product Line using SUMIF and AVERAGEIF
- Sales by Branch using SUMIF and COUNTIF
- Sales by Payment Method with % of total
- Monthly Revenue Trend for Jan, Feb, Mar 2019

### 5. Dashboard
- 4 KPI Cards: Total Revenue, Total Transactions,
  Average Rating, Top Product Line
- Bar Chart: Revenue by Product Line
- Pie Chart: Sales by Payment Method
- Line Chart: Monthly Revenue Trend

## Workbook Structure
| Sheet | Purpose |
|---|---|
| Raw Data | Original untouched dataset |
| Working Data | Cleaned and analysis-ready data |
| Cleaning Log | Step by step documentation |
| Product Reference | XLOOKUP reference table |
| Summary Analysis | SUMIF aggregation tables |
| Dashboard | Visual KPI dashboard |

## Key Findings
- Food and Beverages generated the highest 
  transaction volume
- Ewallet was the most used payment method
- Branch performance was relatively balanced 
  across all three locations
- Average customer rating was 6.97 out of 10

## Skills Demonstrated
TRIM | PROPER | SUBSTITUTE | ROUND | XLOOKUP |
SUMIF | SUMIFS | COUNTIF | AVERAGEIF |
Pivot Charts | Data Validation | Dashboard Design |
Cleaning Log Documentation

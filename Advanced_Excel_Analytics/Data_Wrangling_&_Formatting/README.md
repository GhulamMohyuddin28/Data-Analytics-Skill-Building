# Excel Data Cleaning Project

**Tool:** Microsoft Excel  
**Dataset:** E-commerce Orders (Raw → Clean)  
**Link of Dataset:** https://www.kaggle.com/datasets/kandeelai22/messy-e-commerce-sales-dataset?  

---

## What I Did

### 1. Kept the Original Data Safe
Before touching anything, I made two separate sheets — one called `Raw_Data` 
to keep the original untouched, and one called `Working_Data` where all the 
cleaning actually happened. This way I never lost what the data looked like 
at the start.

### 2. Fixed the Dates
Some dates were typed as plain text like "Jan 5 2023" instead of actual date 
values. Excel wasn't reading them as dates at all. I used Text-to-Columns to 
force Excel to recognize them and converted everything into one consistent 
Short Date format.

### 3. Dealt with Garbage and Missing Data
Some cells in number or date columns had random text like "abc" or 
"four hundred" sitting in them. I cleared those out and replaced them with 
blanks. For the `Category` column, some rows were just empty. I used 
F5 → Go To Special → Blanks to select all empty cells at once, then filled 
them with "Unknown" using Ctrl + Enter so no category was left blank.

### 4. Fixed Negative Numbers That Made No Sense
A few rows had negative values in `Quantity` and `Price`. You can't ship 
minus 5 items, so those were clearly typos. I used the ABS function in a 
helper column to flip them to positive, then replaced the originals. 
For rows where quantity was just missing, I filled in 1 as a safe default.

### 5. Filled in Missing Prices the Right Way
Leaving a price blank breaks the total calculation. But I didn't want to 
just guess a number and mess up the revenue figures. So I used AVERAGEIFS 
to calculate the average price for that specific product — only using rows 
where quantity was 1, so bulk-order prices didn't skew the average. I also 
ran into #DIV/0! errors and a circular reference issue while doing this, 
fixed both by calculating the value separately and hardcoding it back in.

### 6. Recalculated the Total Column
The original `Total` column had errors and missing values in several rows. 
I wiped the whole column and rewrote it as a simple formula: 
`= Quantity * Price`. Then I dragged it down the full dataset and used 
Paste Special → Values to replace the formulas with fixed numbers.

---

## Files in This Repo

| File | What it is |
|------|------------|
| `raw_to_clean_workbook.xlsx` | The Excel file with Before and After sheets |
| `before_cleaning.png` | Screenshot of the raw messy data |
| `after_cleaning.png` | Screenshot of the cleaned data |

---

## Why I Did This Project

I wanted to practice real data cleaning on a messy dataset — the kind of 
issues that actually show up in the real world like wrong data types, missing 
values, and numbers that don't make logical sense. Everything here was done 
entirely in Excel without any code.

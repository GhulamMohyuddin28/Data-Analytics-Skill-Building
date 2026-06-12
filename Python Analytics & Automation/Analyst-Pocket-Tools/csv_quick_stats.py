"""
csv_quick_stats.py
------------------
You know that moment when someone hands you a CSV and you spend the first 10 minutes 
just figuring out what's even in it?

This script fixes that. Point it at any CSV file and it'll instantly tell you everything 
you need to know before you start the real analysis, shape, types, missing values, 
stats, and the most common values in text columns.

Usage:
    python csv_quick_stats.py your_file.csv

Built with: pandas
"""

import sys
import pandas as pd

def divider(title=""):
    line = "─" * 50
    if title:
        print(f"\n┌{line}┐")
        print(f"  {title}")
        print(f"└{line}┘")
    else:
        print(f"{'─' * 52}")

def analyze(filepath: str):
    try:
        df = pd.read_csv(filepath)
    except FileNotFoundError:
        print(f"File not found: {filepath}")
        sys.exit(1)
    except Exception as e:
        print(f"Could not read file: {e}")
        sys.exit(1)

    #Basic Info
    divider("BASIC INFO")
    print(f"  File        : {filepath}")
    print(f"  Rows        : {df.shape[0]:,}")
    print(f"  Columns     : {df.shape[1]}")
    print(f"  Memory      : {df.memory_usage(deep=True).sum() / 1024:.2f} KB")

    #Column Types
    divider("COLUMN TYPES")
    for col, dtype in df.dtypes.items():
        print(f"  {col:<30} {str(dtype)}")

    #Missing Values
    divider("MISSING VALUES")
    missing = df.isnull().sum()
    missing_pct = (missing / len(df) * 100).round(2)
    has_missing = False
    for col in df.columns:
        if missing[col] > 0:
            has_missing = True
            print(f"  {col:<30} {missing[col]:>6} missing  ({missing_pct[col]}%)")
    if not has_missing:
        print("No missing values found!")

    #Numeric Summary
    numeric_cols = df.select_dtypes(include="number")
    if not numeric_cols.empty:
        divider("NUMERIC SUMMARY")
        summary = numeric_cols.describe().T
        summary.columns = [c.upper() for c in summary.columns]
        print(summary.to_string())

    #Categorical Frequencies
    cat_cols = df.select_dtypes(include=["object", "category", "bool"])
    if not cat_cols.empty:
        divider("TOP VALUES PER CATEGORICAL COLUMN")
        for col in cat_cols.columns:
            top = df[col].value_counts().head(5)
            print(f"\n  [{col}]")
            for val, count in top.items():
                bar = "█" * min(int(count / top.iloc[0] * 20), 20)
                print(f"    {str(val):<25} {count:>6}  {bar}")

    divider()
    print("Analysis complete!")
    divider()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python csv_quick_stats.py <path_to_csv>")
        sys.exit(1)
    analyze(sys.argv[1])
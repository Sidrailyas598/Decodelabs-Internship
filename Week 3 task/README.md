# 🗄️ Project 3: SQL Data Analysis - DecodeLabs Internship

![Status](https://img.shields.io/badge/Status-Completed-success)
![Project](https://img.shields.io/badge/Project-SQL%20Data%20Analysis-blue)
![Database](https://img.shields.io/badge/Database-SQLite-orange)
![Queries](https://img.shields.io/badge/Queries-18%20SQL%20Queries-green)

---

## 📌 Project Overview

This is **Project 3** of the DecodeLabs Industrial Training Kit - Batch 2026.  
The goal is to perform **SQL Data Analysis** on a cleaned e-commerce dataset by writing structured queries to filter, group, and aggregate data.

✅ **Project Status: COMPLETED**

---

## 🎯 Objectives

| Task | Description |
|------|-------------|
| ✅ Database Creation | Import CSV/Excel data into SQLite database |
| ✅ SQL Queries | Write SELECT, WHERE, GROUP BY, HAVING queries |
| ✅ Data Analysis | Extract business insights from 1,200 orders |
| ✅ Results Export | Save query outputs to Excel |
| ✅ Documentation | Create README and Report |

---

## 📁 Dataset Information

| Property | Value |
|----------|-------|
| **Source** | Cleaned_Dataset.xlsx (from Project 1) |
| **Database** | Project 3.db (SQLite) |
| **Table Name** | orders |
| **Total Records** | 1,200 rows |
| **Total Columns** | 14 |

### Table Schema

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| OrderID | TEXT | Unique order identifier |
| Date | TEXT | Order date (YYYY-MM-DD) |
| CustomerID | TEXT | Unique customer identifier |
| Product | TEXT | Product name |
| Quantity | INTEGER | Number of units ordered |
| UnitPrice | REAL | Price per unit |
| ShippingAddress | TEXT | Customer delivery address |
| PaymentMethod | TEXT | Online, Credit Card, Debit Card, Cash, Gift Card |
| OrderStatus | TEXT | Cancelled, Delivered, Shipped, Returned, Pending |
| TrackingNumber | TEXT | Shipment tracking number |
| ItemsInCart | INTEGER | Total items in cart |
| CouponCode | TEXT | Discount code applied |
| ReferralSource | TEXT | Instagram, Facebook, Email, Google, Referral |
| TotalPrice | REAL | Total order value |

---

## 📊 Key Insights from SQL Analysis

| Metric | Value |
|--------|-------|
| **Total Revenue** | Rs. 12,64,761.96 |
| **Average Order Value** | Rs. 1,053.97 |
| **Total Orders** | 1,200 |
| **Best Selling Product (Revenue)** | Chair (Rs. 1,95,620) |
| **Most Orders Product** | Printer (181 orders) |
| **Most Common Order Status** | Cancelled (250 orders, 20.8%) |
| **Most Popular Payment Method** | Online |
| **Busiest Year** | 2023 (510 orders) |
| **Top Referral Source** | Instagram |
| **Outliers Detected** | 8 orders above Rs. 3,300 |

---

## 📊 Product-wise Analysis

| Product | Total Revenue (Rs.) | Order Count |
|---------|---------------------|-------------|
| Chair | 1,95,620.11 | 178 |
| Printer | 1,95,612.61 | 181 |
| Laptop | 1,92,126.56 | 173 |
| Tablet | 1,86,568.95 | 179 |
| Monitor | 1,75,651.41 | 163 |
| Desk | 1,67,459.93 | 170 |
| Phone | 1,51,722.39 | 156 |

---

## 📝 SQL Queries Written (18 Queries)

### Basic SELECT Queries

| No. | Query Description |
|-----|-------------------|
| 1 | SELECT * FROM orders LIMIT 10 |
| 2 | Orders with TotalPrice > 2000 |
| 3 | Cancelled orders only |
| 4 | Orders from year 2024 |
| 5 | Instagram referrals with value > 1500 |

### GROUP BY & Aggregation Queries

| No. | Query Description |
|-----|-------------------|
| 6 | Product-wise total revenue |
| 7 | Product-wise total quantity sold |
| 8 | Payment method analysis |
| 9 | Order status distribution |
| 10 | Referral source analysis |

### HAVING & Advanced Queries

| No. | Query Description |
|-----|-------------------|
| 11 | Products with revenue > Rs. 1,50,000 |
| 12 | Year-wise revenue analysis |
| 13 | Top 5 coupon codes |
| 14 | Product and status combination |
| 15 | Average quantity by product |

### Analysis Queries

| No. | Query Description |
|-----|-------------------|
| 16 | Outlier detection (TotalPrice > 3300) |
| 17 | Monthly revenue trend for 2024 |
| 18 | ItemsInCart vs TotalPrice analysis |

---

## 🔧 Sample SQL Query

```sql
-- Product-wise revenue and order count
SELECT Product, 
       SUM(TotalPrice) as TotalRevenue, 
       COUNT(*) as OrderCount
FROM orders
GROUP BY Product
ORDER BY TotalRevenue DESC;
Project-3-SQL/
│
├── Project 3 -Sql -task.ipynb   # Jupyter notebook with all code
├── Project 3.db                 # SQLite database (1,200 records)
├── SQL_Query_Results.xlsx       # Excel file with all query outputs
├── SQL_Queries.sql              # All 18 SQL queries
├── Project_3_Report.pdf         # Final report
└── README.md                    # This file
pip install pandas sqlite3 openpyxl
import sqlite3
import pandas as pd

# Connect to database
conn = sqlite3.connect('Project 3.db')

# Run a query
query = "SELECT * FROM orders LIMIT 10;"
df = pd.read_sql_query(query, conn)
print(df)

# Close connection
conn.close()

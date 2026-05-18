# 🧹 Project 1: Data Cleaning & Preparation - DecodeLabs Internship

![Status](https://img.shields.io/badge/Status-Completed-success)
![Project](https://img.shields.io/badge/Project-Data%20Cleaning-blue)
![Tool](https://img.shields.io/badge/Tool-Python%20%26%20Pandas-orange)
![Records](https://img.shields.io/badge/Records-1200-brightgreen)

---

## 📌 Project Overview

This is **Project 1** of the DecodeLabs Industrial Training Kit - Batch 2026.  
The goal is to transform raw, messy data into a **"Gold Standard"** clean dataset by handling missing values, removing duplicates, and correcting data formats.

✅ **Project Status: COMPLETED**

---

## 🎯 Objectives

| Task | Description |
|------|-------------|
| ✅ Missing Values | Identify and handle null values |
| ✅ Duplicates | Check and remove duplicate OrderIDs |
| ✅ Date Format | Convert to ISO 8601 (YYYY-MM-DD) |
| ✅ Numeric Precision | Round TotalPrice & UnitPrice to 2 decimals |
| ✅ Text Cleaning | Strip whitespace + Title Case |
| ✅ Documentation | Create Change Log PDF |

---

## 📁 Dataset Information

| Property | Value |
|----------|-------|
| **Original File** | Dataset for Data Analytics.xlsx |
| **Output File** | Cleaned_Dataset.xlsx |
| **Total Records** | 1,200 rows |
| **Total Columns** | 14 |
| **Time Period** | 2023 - 2025 |

### Columns in Dataset

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| OrderID | Object | Unique order identifier |
| Date | DateTime | Order date |
| CustomerID | Object | Unique customer identifier |
| Product | Object | Product name |
| Quantity | Integer | Number of units |
| UnitPrice | Float | Price per unit |
| ShippingAddress | Object | Customer address |
| PaymentMethod | Object | Online, Credit Card, Debit Card, Cash, Gift Card |
| OrderStatus | Object | Cancelled, Delivered, Shipped, Returned, Pending |
| TrackingNumber | Object | Shipment tracking number |
| ItemsInCart | Integer | Total items in cart |
| CouponCode | Object | Discount code applied |
| ReferralSource | Object | Instagram, Facebook, Email, Google, Referral |
| TotalPrice | Float | Total order value |

---

## 🔧 Data Cleaning Steps Performed

| Step | Action | Code/Logic |
|------|--------|------------|
| 1 | Load Dataset | `pd.read_excel()` |
| 2 | Check Missing Values | `df.isnull().sum()` |
| 3 | Fill Missing CouponCode | `df['CouponCode'].fillna('No Coupon')` |
| 4 | Check Duplicates | `df.duplicated(subset=['OrderID']).sum()` |
| 5 | Remove Duplicates | `df.drop_duplicates(subset=['OrderID'])` |
| 6 | Fix Date Format | `pd.to_datetime().dt.date` |
| 7 | Round Numeric Columns | `.round(2)` |
| 8 | Clean Text Columns | `.str.strip().str.title()` |
| 9 | Save Cleaned Data | `df.to_excel('Cleaned_Dataset.xlsx')` |

---

## 📊 Cleaning Summary

| Metric | Before Cleaning | After Cleaning |
|--------|-----------------|----------------|
| Total Rows | 1,200 | 1,200 |
| Missing Values | 309 (CouponCode) | 0 |
| Duplicate OrderID | 0 | 0 |
| Date Format | With timestamp | YYYY-MM-DD |
| TotalPrice Decimals | Up to 6 decimals | 2 decimals |
| Text Case | Inconsistent | Title Case |

---

## 📄 Change Log

A **Change Log PDF** was created documenting all changes made to the dataset.

| Change ID | Description | Impact | Status |
|-----------|-------------|--------|--------|
| CR001 | Checked for duplicate OrderID | 0 duplicates found | ✅ Resolved |
| CR002 | Converted Date to YYYY-MM-DD | All 1,200 rows fixed | ✅ Resolved |
| CR003 | Rounded TotalPrice to 2 decimals | Precision standardized | ✅ Resolved |
| CR004 | Rounded UnitPrice to 2 decimals | Precision standardized | ✅ Resolved |
| CR005 | Filled missing CouponCode | 309 values fixed | ✅ Resolved |
| CR006 | Cleaned text columns | 4 columns standardized | ✅ Resolved |

---

---

## 🚀 How to Run

### Prerequisites

```bash
pip install pandas openpyxl jupyter

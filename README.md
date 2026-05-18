# 📊 Project 2: Exploratory Data Analysis (EDA) - DecodeLabs Internship

![Status](https://img.shields.io/badge/Status-Completed-success)
![Project](https://img.shields.io/badge/Project-EDA-blue)
![Tool](https://img.shields.io/badge/Tool-Python%20%26%20Pandas-orange)
![Visualization](https://img.shields.io/badge/Visualization-Matplotlib%20%26%20Seaborn-green)

---

## 📌 Project Overview

This project is part of the **DecodeLabs Industrial Training Kit - Batch 2026**.  
The goal is to perform **Exploratory Data Analysis (EDA)** on a cleaned e-commerce dataset to uncover patterns, trends, and outliers.

✅ **Project Status: COMPLETED**

---

## 🎯 Objective

- Calculate basic statistics (mean, median, count, etc.)
- Identify trends and outliers in the data
- Create visualizations to understand distributions
- Summarize key observations and insights

---

## 📁 Dataset Information

| Property | Value |
|----------|-------|
| **File Name** | Cleaned_Dataset.xlsx |
| **Total Records** | 1,200 orders |
| **Total Columns** | 14 |
| **Time Period** | 2023 - 2025 |

### Columns Description

| Column | Description |
|--------|-------------|
| OrderID | Unique order identifier |
| Date | Order date (YYYY-MM-DD) |
| CustomerID | Unique customer identifier |
| Product | Product name (Monitor, Phone, Tablet, Chair, Printer, Desk, Laptop) |
| Quantity | Number of units ordered |
| UnitPrice | Price per unit (Rs.) |
| PaymentMethod | Online, Credit Card, Debit Card, Cash, Gift Card |
| OrderStatus | Cancelled, Delivered, Shipped, Returned, Pending |
| ReferralSource | Instagram, Facebook, Email, Google, Referral |
| TotalPrice | Total order value (Rs.) |

---

## 📊 Key Metrics (Executive Summary)

| Metric | Value |
|--------|-------|
| **Total Revenue** | **Rs. 12,64,761.96** |
| **Average Order Value** | **Rs. 1,053.97** |
| **Total Orders** | **1,200** |
| **Total Items Sold** | **3,535** |
| **Unique Products** | **7** |
| **Unique Payment Methods** | **6** |

---

## 📈 Visualizations & Insights

### 1. Top 5 Products by Quantity Sold


**Insight:** Chair is the best-selling product with **562 units sold**, followed by Monitor (531) and Phone (523).

---

### 2. Top 5 Products by Revenue


**Insight:** Chair generates the highest revenue (approx. Rs. 2,05,000), despite similar sales volume to other products — indicating higher average unit price.

---

### 3. Order Status Distribution


**Insight:** All statuses are nearly evenly distributed (~20% each). Cancelled orders (250) are slightly higher, indicating room for improvement.

| Status | Percentage | Orders |
|--------|------------|--------|
| Cancelled | 20.8% | 250 |
| Delivered | 20.0% | 240 |
| Shipped | 19.8% | 238 |
| Returned | 19.8% | 238 |
| Pending | 19.6% | 234 |

---

### 4. Payment Methods


**Insight:** Online payment is the most popular method (~210 orders), followed by Credit Card and Debit Card.

---

### 5. Orders by Year


**Insight:** Year **2023** recorded the highest orders (510). Decline in 2025 is expected as data covers only first half.

| Year | Orders |
|------|--------|
| 2023 | 510 |
| 2024 | 430 |
| 2025 | 260 |

---

### 6. Referral Sources


**Insight:** **Instagram** is the top acquisition channel (~260 orders). Instagram + Facebook together contribute ~43% of all orders.

---

### 7. Outlier Detection (TotalPrice)


**Insight:** **8 outlier orders** detected above Rs. 3,330.42, requiring manual review for fraud or data errors.

| Metric | Value |
|--------|-------|
| Q1 | Rs. 410.52 |
| Q3 | Rs. 1,578.48 |
| IQR | Rs. 1,167.96 |
| Upper Bound | Rs. 3,330.42 |
| Outliers | **8 orders** |

---

### 8. Correlation Analysis


**Insight:** Strong positive correlation between **Quantity and TotalPrice (r = 0.85)** — as quantity increases, total price increases significantly.

| Variable Pair | Correlation | Interpretation |
|---------------|-------------|----------------|
| Quantity ↔ TotalPrice | 0.85 | Strong positive |
| UnitPrice ↔ TotalPrice | 0.70 | Moderate positive |
| UnitPrice ↔ Quantity | -0.10 | Very weak negative |

---

## 🔍 Key Findings

| No. | Finding |
|-----|---------|
| 1 | Total revenue: **Rs. 12,64,761.96** from 1,200 orders |
| 2 | Average order value: **Rs. 1,053.97** |
| 3 | **Chair** is the best-selling product (562 units) |
| 4 | **Chair** also generates highest revenue |
| 5 | **Cancelled orders** are 250 (20.8%) — highest among all statuses |
| 6 | **Online payment** is most popular |
| 7 | **2023** was busiest year (510 orders) |
| 8 | **Instagram** is top referral source |
| 9 | **8 outliers** detected above Rs. 3,330.42 |
| 10 | Strong correlation between Quantity and TotalPrice (r = 0.85) |

---

## 💡 Recommendations

| Recommendation | Expected Impact |
|----------------|-----------------|
| Focus marketing on Chair & Monitor | +15-20% revenue growth |
| Investigate cancelled orders (20.8%) | Recover Rs. 2-3 lakhs |
| Optimize online payment method | Better success rate |
| Increase Instagram ad spend | +20-25% customer acquisition |
| Review 8 outlier orders | Better data quality |

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python** | Data analysis |
| **Pandas** | Data manipulation |
| **Matplotlib** | Static visualizations |
| **Seaborn** | Statistical visualizations |
| **Jupyter Notebook** | Interactive development |

---

## 🚀 How to Run

### Prerequisites

```bash
pip install pandas numpy matplotlib seabopen jupyter# Clone repository
git clone https://github.com/your-username/EDA-Project-2.git

# Open Jupyter Notebook
jupyter notebook EDA_Project_2.ipynb

# Run all cells
## 📁 Repository Structure

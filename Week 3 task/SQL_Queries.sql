
-- PROJECT 3: SQL DATA ANALYSIS
-- Analyst: [Your Name]
-- Date: May 2026

-- Query 1: Orders with TotalPrice > 2000
SELECT OrderID, Product, TotalPrice 
FROM orders 
WHERE TotalPrice > 2000
ORDER BY TotalPrice DESC;

-- Query 2: Cancelled Orders
SELECT OrderID, Product, OrderStatus, TotalPrice
FROM orders 
WHERE OrderStatus = 'Cancelled';

-- Query 3: Product-wise Revenue
SELECT Product, SUM(TotalPrice) as TotalRevenue
FROM orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- Query 4: Order Status Distribution
SELECT OrderStatus, COUNT(*) as OrderCount
FROM orders
GROUP BY OrderStatus
ORDER BY OrderCount DESC;

-- Query 5: Referral Source Analysis
SELECT ReferralSource, COUNT(*) as OrderCount, SUM(TotalPrice) as TotalRevenue
FROM orders
GROUP BY ReferralSource
ORDER BY TotalRevenue DESC;

-- Query 6: Year-wise Revenue
SELECT SUBSTR(Date, 1, 4) as Year, SUM(TotalPrice) as TotalRevenue
FROM orders
GROUP BY Year
ORDER BY Year;

-- Query 7: Top Coupon Codes
SELECT CouponCode, COUNT(*) as UsageCount
FROM orders
WHERE CouponCode != 'No Coupon'
GROUP BY CouponCode
ORDER BY UsageCount DESC
LIMIT 5;

-- Query 8: Outlier Detection
SELECT OrderID, Product, TotalPrice
FROM orders
WHERE TotalPrice > 3300
ORDER BY TotalPrice DESC;

-- Query 9: Monthly Revenue Trend 2024
SELECT SUBSTR(Date, 6, 2) as Month, SUM(TotalPrice) as TotalRevenue
FROM orders
WHERE Date LIKE '2024%'
GROUP BY Month
ORDER BY Month;

-- Query 10: Products with Revenue > 150000
SELECT Product, SUM(TotalPrice) as TotalRevenue
FROM orders
GROUP BY Product
HAVING SUM(TotalPrice) > 150000;

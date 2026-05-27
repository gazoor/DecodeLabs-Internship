-- =========================
-- Preview Data
-- =========================

SELECT * FROM cleandata LIMIT 10;


-- =========================
-- Total Orders
-- =========================

SELECT COUNT(OrderID) AS Total_Orders
FROM cleandata;


-- =========================
-- Total Revenue by Product
-- =========================

SELECT Product,
SUM(TotalPrice) AS Total_Revenue
FROM cleandata
GROUP BY Product
ORDER BY Total_Revenue DESC;


-- =========================
-- Average Unit Price
-- =========================

SELECT AVG(UnitPrice) AS Average_Price
FROM cleandata;


-- =========================
-- Maximum & Minimum Price
-- =========================

SELECT MAX(UnitPrice) AS Max_Price,
MIN(UnitPrice) AS Min_Price
FROM cleandata;


-- =========================
-- Products with High Prices
-- =========================

SELECT Product,
UnitPrice
FROM cleandata
WHERE UnitPrice > 500;


-- =========================
-- Average Price by Product
-- =========================

SELECT Product,
AVG(UnitPrice) AS Avg_Price
FROM cleandata
GROUP BY Product
ORDER BY Avg_Price DESC;


-- =========================
-- Orders by Status
-- =========================

SELECT OrderStatus,
COUNT(*) AS Status_Count
FROM cleandata
GROUP BY OrderStatus;


-- =========================
-- Total Orders by Year
-- =========================

SELECT substr(Date, -4) AS Year,
COUNT(*) AS Total_Orders
FROM cleandata
GROUP BY Year
ORDER BY Year;


-- =========================
-- Top 5 Products Sold
-- =========================

SELECT Product,
SUM(Quantity) AS Total_Sold
FROM cleandata
GROUP BY Product
ORDER BY Total_Sold DESC
LIMIT 5;


-- =========================
-- Revenue by Payment Method
-- =========================

SELECT PaymentMethod,
SUM(TotalPrice) AS Total_Revenue
FROM cleandata
GROUP BY PaymentMethod
ORDER BY Total_Revenue DESC;
SELECT * FROM ecommerce LIMIT 100;

SELECT COUNT(DISTINCT "Order_ID") AS total_unique_orders 
FROM "Tables";

SELECT SUM("Sales") AS total_sales 
FROM "Tables";

SELECT "Product", SUM("Sales") AS total_sales
FROM "Tables"
GROUP BY "Product"
ORDER BY total_sales DESC
LIMIT 5;

SELECT "City", SUM("Sales") AS total_sales
FROM "Tables"
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 5;

SELECT "Month", SUM("Sales") AS total_sales
FROM "Tables"
GROUP BY "Month"
ORDER BY total_sales DESC;

SELECT "Product", SUM("Profit") AS total_profit
FROM "ecommerce"
GROUP BY "Product"
ORDER BY total_profit DESC
LIMIT 5;

SELECT 
    "Payment_Mode",
    COUNT(*) AS total_orders,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM "Tables"
GROUP BY "Payment_Mode"
ORDER BY total_orders DESC;

SELECT COUNT(*) AS total_cancelled_orders 
FROM "Tables" 
WHERE "Order_Status" = 'Cancelled';
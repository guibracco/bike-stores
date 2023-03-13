-- How many sales occured in 2018?
USE BikeStores
SELECT COUNT(order_date)
FROM sales.orders
WHERE order_date LIKE '2018%';
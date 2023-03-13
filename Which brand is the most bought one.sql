-- Which brand is the most bought one (quantity of items)?
USE BikeStores
SELECT production.brands.brand_name AS brands,
    (SELECT SUM(sales.order_items.quantity)
    FROM sales.order_items, production.products
    WHERE sales.order_items.product_id = production.products.product_id
        AND production.brands.brand_id = production.products.brand_id) AS total_sold
FROM production.brands
ORDER BY total_sold DESC;
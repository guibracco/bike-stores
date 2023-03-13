-- Which employee works at which store?
USE BikeStores
SELECT sto.store_name, sta.first_name, sta.last_name
FROM sales.stores AS sto
INNER JOIN sales.staffs AS sta
ON sto.store_id = sta.store_id
ORDER BY sto.store_name, sta.first_name;
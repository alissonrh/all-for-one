SELECT * FROM northwind.purchase_orders
WHERE created_BY >= 3
ORDER BY created_by DESC, id ASC;
SELECT DISTINCT p.name, d.date_of_delivery, s.name
FROM Product p JOIN Delivery d ON p.id = d.id_product
JOIN Supplier s ON s.id = d.id_supplier
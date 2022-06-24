SELECT DISTINCT s.name, p.name, d.id_supplier 
FROM Product p LEFT OUTER JOIN Delivery d ON p.id = d.id_supplier
JOIN Supplier s ON d.id_supplier = s.id
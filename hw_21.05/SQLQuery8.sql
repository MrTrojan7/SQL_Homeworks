SELECT TOP 3 s.name, c.name, d.price
FROM Delivery d JOIN Product p
ON d.id_product = p.id
JOIN Supplier s
ON d.id_supplier = s.id
JOIN Category c 
ON p.id_category = c.id
WHERE d.price*d.quantity>=400
GROUP BY s.name, c.name, d.price
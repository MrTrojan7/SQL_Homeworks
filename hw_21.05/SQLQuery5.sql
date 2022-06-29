SELECT p.name, d.date_of_delivery, s.name, p.price*p.quantity AS allPrice
FROM Delivery d Join Product p
ON d.id_product = p.id
JOIN Producer pr 
ON p.id_producer = pr.id
JOIN Supplier s 
ON d.id_supplier = s.id
WHERE d.date_of_delivery BETWEEN '2022-04-30' AND '2022-05-30'
ORDER BY allPrice ASC
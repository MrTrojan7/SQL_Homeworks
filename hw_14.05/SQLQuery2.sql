SELECT Product.name, Delivery.date_of_delivery, Supplier.name
FROM Product FULL JOIN Delivery
ON Product.id = Delivery.id_product
FULL JOIN Supplier ON Supplier.id = Delivery.id_supplier

EXCEPT 

SELECT Product.name, Delivery.date_of_delivery, Supplier.name
FROM Product, Delivery, Supplier
WHERE Supplier.id IS NULL
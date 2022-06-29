SELECT name, price, quantity, SUM(price*quantity) AS sum
FROM Product
WHERE Product.id_category IN (6,7)
GROUP BY name, price, quantity

SELECT SUM(price*quantity) AS 'Total cost'
FROM Product
WHERE id_category IN (6,7)
SELECT DISTINCT Producer.name, Product.name
FROM Producer LEFT OUTER JOIN Product
ON Producer.id = Product.id_producer

WHERE Producer.id IS NOT NULL

EXCEPT 

SELECT Producer.name, Product.name
FROM Producer, Product
WHERE Producer.id IS NULL
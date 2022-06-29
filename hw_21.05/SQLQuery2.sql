SELECT name, AVG(price)
FROM Product
GROUP BY name
HAVING AVG(price) >50
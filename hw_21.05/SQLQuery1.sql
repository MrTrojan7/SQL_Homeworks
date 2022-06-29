SELECT name, MIN(price), COUNT(name)
FROM Product
GROUP BY name
HAVING COUNT(name)>1
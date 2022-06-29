SELECT c.name, AVG(p.price * p.quantity)
FROM Product p JOIN Category c
ON p.id_category = c.id
GROUP BY c.name
HAVING AVG(p.price*p.quantity)>100
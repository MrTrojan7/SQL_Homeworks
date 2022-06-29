SELECT TOP 1 COUNT(p.name), c.name
FROM Product p JOIN Category c
ON p.id_category = c.id
GROUP BY c.name
ORDER BY COUNT(p.name) ASC
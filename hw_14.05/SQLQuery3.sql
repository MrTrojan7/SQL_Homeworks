SELECT DISTINCT p.name, c.name, pr.name
FROM Product p LEFT OUTER JOIN Category c
ON p.id_category = c.id
JOIN Producer pr
ON pr.id = p.id_producer

EXCEPT 

SELECT c.name, p.name, pr.name
FROM Category c, Product p, Producer pr
WHERE pr.name = 'ннн "мКХ ч"'
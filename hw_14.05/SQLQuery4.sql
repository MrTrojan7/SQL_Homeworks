SELECT pr.name
FROM Producer pr
EXCEPT
SELECT pr.name
FROM Product p JOIN Category c
ON p.id_category = c.id
JOIN Producer pr
ON pr.id = p.id_producer
WHERE c.name <> 'Молочные'
SELECT c.name, p.name, pr.name
FROM Product p JOIN Category c
ON p.id_category = c.id
JOIN Producer pr
ON pr.id = p.id_producer
WHERE pr.name <> 'ннн "мКХ ч"'
SELECT p.name, c.name
FROM Product p RIGHT OUTER JOIN Producer c
ON p.id_category = c.id
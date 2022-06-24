SELECT c.name, p.name
FROM Producer p RIGHT OUTER JOIN Category c
ON p.id = c.id
WHERE p.name <> 'ннн "мКХ ч"'
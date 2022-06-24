SELECT p.name, c.name
FROM Producer p FULL JOIN Category c
ON p.id = c.id
WHERE c.name <> 'Молочные'
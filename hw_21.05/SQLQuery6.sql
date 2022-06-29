SELECT  COUNT(p.quantity) AS count, pr.name
FROM Producer pr JOIN Address ad
ON pr.id_address = ad.id
JOIN City ct
ON ad.id_city = ct.id
JOIN Product p 
ON p.id_producer = pr.id
GROUP BY pr.name
HAVING SUM(p.price*p.quantity) BETWEEN 500 AND 2000
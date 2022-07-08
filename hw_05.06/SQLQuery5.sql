CREATE VIEW ResponsibleLibrarian AS
SELECT TOP 1 COUNT(T_Cards.date_in)AS amount, Librarian.first_name, Librarian.last_name
FROM T_Cards JOIN Librarian
ON T_Cards.id_librarian = Librarian.id
GROUP BY Librarian.first_name, Librarian.last_name
ORDER BY amount DESC
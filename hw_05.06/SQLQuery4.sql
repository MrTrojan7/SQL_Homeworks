CREATE VIEW TeacherGetMustBooks AS
SELECT TOP 1 COUNT(Librarian.first_name) AS amount,Librarian.first_name, Librarian.last_name
FROM T_Cards FULL JOIN Librarian
ON T_Cards.id_librarian = Librarian.id
Group by Librarian.first_name, Librarian.last_name
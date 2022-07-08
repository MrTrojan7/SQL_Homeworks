CREATE VIEW StudentsAndBooks AS
SELECT Student.first_name, Student.last_name, Book.name
FROM Student JOIN S_Cards
ON Student.id = S_Cards.id_student
JOIN Book
ON S_Cards.id_book = Book.id
WHERE S_Cards.date_in IS NULL
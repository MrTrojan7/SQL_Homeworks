CREATE VIEW StudentAndBooks_Do_Not_return AS
SELECT Student.first_name, Student.last_name, Book.name
FROM Student FULL JOIN S_Cards
ON Student.id = S_Cards.id_student
FULL JOIN Book
ON S_Cards.id_book = Book.id
WHERE S_Cards.date_out IS NULL AND Student.id IS NOT NULL
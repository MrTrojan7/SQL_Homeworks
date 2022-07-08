CREATE VIEW TeachersAndBooks AS
SELECT Teacher.first_name, Teacher.last_name, Book.name
FROM Teacher JOIN T_Cards
ON Teacher.id = T_Cards.id_teacher
JOIN Book
ON T_Cards.id_book = Book.id
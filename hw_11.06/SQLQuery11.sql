DECLARE @name nvarchar(50) = 'Kateryna'
DECLARE @letter char = 'a'
DECLARE @index int = 0
DECLARE @rightSide int = 0
DECLARE @countOfLetter int = 0
DECLARE @stringIndex nvarchar (50) =''
PRINT @name
WHILE CHARINDEX(@letter, @name, @rightSide) > 0 
	BEGIN
		SET @index = CHARINDEX(@letter, @name, @rightSide)
		SET @stringIndex += CAST(@index AS nvarchar) + ' '
		SET @countOfLetter += 1
		SET @rightSide = @index + 1
	END
PRINT 'Количество букв ' + @letter + ' = ' + CAST(@countOfLetter AS nvarchar)
PRINT 'Позиции - ' + @stringIndex
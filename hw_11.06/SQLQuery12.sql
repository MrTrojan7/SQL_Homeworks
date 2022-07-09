DECLARE @name nvarchar(100) = 'I love C++ too much'
DECLARE @index int = 0
DECLARE @rightSide int = 0
DECLARE @count int = 0
WHILE CHARINDEX(' ', @name) > 0
	BEGIN
		SET @index = CHARINDEX(' ', @name)
		SET @rightSide = LEN(@name) - @index
		SET @count +=1
		SET @name =RIGHT(@name, @rightSide)
	END
PRINT CAST(@count+1 AS nvarchar) + ' количество слов '
DECLARE @i int = 1
DECLARE @j int = 1
DECLARE @res int = 1
DECLARE @str nvarchar(100) = ''
WHILE @i <= 10
	BEGIN--1
		WHILE @j <= 10
			BEGIN--2
				SET @str += CAST((@i * @j) AS nvarchar)
				SET @str += CHAR(9)
				SET @j += 1
			END--2
		PRINT @str
		SET @str = ''
		SET @i += 1
		SET @j = 1
	END--1
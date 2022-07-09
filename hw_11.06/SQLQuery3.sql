DECLARE @star char = '*'
DECLARE @numberOfStars int = 5
DECLARE @starLine nvarchar(100) = ''
DECLARE @count int = 0
WHILE @count<@numberOfStars
	BEGIN
		SET @starLine = @starLine + @star
		SET @count = @count+1
	END
PRINT @starline
DECLARE @factorialNumber int = 20  
DECLARE @temp int = @factorialNumber
DECLARE @simpleNumber bigint =1;
WHILE @temp>=1
	BEGIN
	WHILE @factorialNumber>=1
		BEGIN
			SET @simpleNumber*=@factorialNumber
			SET @factorialNumber-=1
		END
	PRINT CAST(@temp AS nvarchar) + ' - ' + CAST(@simpleNumber AS nvarchar)
	SET @temp-=1
	SET @factorialNumber = @temp
	SET @simpleNumber = 1
	END
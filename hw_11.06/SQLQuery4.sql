DECLARE @currentTime time = CURRENT_TIMESTAMP
PRINT @currentTime
DECLARE @morningTime time = '06:00:00'
DECLARE @dayTime time = '12:00:00'
DECLARE @eveningTime time = '18:00:00'
DECLARE @nightTime time = '22:00:00'
IF @currentTime>=@morningTime AND @currentTime<=@dayTime
	BEGIN
		PRINT 'Доброе Утро!'
	END
IF @currentTime>=@dayTime AND @currentTime<=@eveningTime
	BEGIN
		PRINT 'Добрый день!'
	END
IF @currentTime>=@eveningTime AND @currentTime<=@nightTime
	BEGIN
		PRINT 'Добрый вечер'
	END
IF @currentTime>=@nightTime OR @currentTime<=@morningTime
	BEGIN
		PRINT 'Доброй ночи'
	END
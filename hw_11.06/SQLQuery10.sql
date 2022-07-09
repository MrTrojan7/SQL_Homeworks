DECLARE @num1 int
DECLARE @num2 int
DECLARE @num3 int
DECLARE @win bit = 0
DECLARE @credit int = 200
PRINT 'Azino tri topora'
WHILE (@win < 1 AND @credit > 0)
	BEGIN
		SET @num1 = RAND() * 7
		SET @num2 = RAND() * 7
		SET @num3 = RAND() * 7
		PRINT 'Combination: ' + CAST(@num1 AS nvarchar) +
		' ' + CAST(@num2 AS nvarchar) + ' ' + 
		CAST(@num1 AS nvarchar) + ' '
		IF(@num1 = 7 AND @num2 = 7 AND @num3 = 7)
			BEGIN
				PRINT 'You are WIN! Jackpot 777! +700 credits'
				SET @credit += 700
				BREAK
			END
		IF(@num1 = 5 AND @num2 = 5 AND @num3 = 5)
		BEGIN
			PRINT 'You are WIN! Jackpot 555! +100 credits'
			SET @credit += 100
		END
				SET @credit -= 10
		IF(@credit = 0)
			BEGIN
				PRINT 'Game over.'
				SET @win = 0
				BREAK
			END
	END
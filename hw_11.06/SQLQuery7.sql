DECLARE @max_num int = 1000000
DECLARE @num int = 3
DECLARE @denominator int = 3
DECLARE @flag int = 0
WHILE @num <= @max_num
	BEGIN
	SET @flag = 0
		WHILE @denominator <= @num
			BEGIN
				IF(@num % @denominator = 0)
					BEGIN
						SET @flag += 1
					END
				IF(@flag > 2)
					BEGIN
						BREAK
					END
				SET @denominator += 1
			END
		IF(@flag <= 2)
			BEGIN
				PRINT @num
			END
		SET @num += 1
		SET @denominator = 1
	END
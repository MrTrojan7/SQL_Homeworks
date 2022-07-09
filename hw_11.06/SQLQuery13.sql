DECLARE @str nvarchar(50) = 'Я так нежен, Катя'
DECLARE @copy_str nvarchar(50) = @str
DECLARE @mid int
DECLARE @tmp nvarchar(50)
DECLARE @tmp2 nvarchar(50)

WHILE CHARINDEX(' ', @copy_str) > 0 OR CHARINDEX(',', @copy_str) > 0-- удаляем пробелы и запятые (если есть)
	BEGIN
      SET @copy_str = REPLACE(@copy_str, ' ', '')
	  SET @copy_str = REPLACE(@copy_str, ',', '')
	END

SET @mid = (LEN(@copy_str) / 2) -- середина строки

IF((LEN(@copy_str) % 2) = 0) -- разделяем строку (если кол-во символов нечетное)
	BEGIN
		SET @tmp = SUBSTRING(@copy_str, 1, @mid)
		SET @tmp2 = SUBSTRING(@copy_str, @mid + 1, (LEN(@copy_str)))
	END
IF((LEN(@copy_str) % 2) != 0) -- разделяем строку (если кол-во символов нечетное)
	BEGIN
		SET @tmp = SUBSTRING(@copy_str, 1, @mid + 1)
		SET @tmp2 = SUBSTRING(@copy_str, @mid + 1, (LEN(@copy_str)))
	END
SET @tmp2 = REVERSE(@tmp2) -- переворачиваем вторую строку

-- отладочные данные
--PRINT @copy_str + ' ' + CAST(LEN(@copy_str) AS nvarchar)
--PRINT @tmp + ' ' + CAST(LEN(@tmp) AS nvarchar)
--PRINT @tmp2 + ' ' + CAST(LEN(@tmp2) AS nvarchar)
--отладочные данные
PRINT 'string "' + @str + '" is:'
-- сравниваем:
IF(@tmp = @tmp2)
	BEGIN
	PRINT 'palindrom' -- строка - палиндром
	END
IF(@tmp != @tmp2)
	BEGIN
	PRINT 'not palindrom' -- строка - не палиндром
	END
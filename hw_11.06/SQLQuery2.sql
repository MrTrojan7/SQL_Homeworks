DECLARE @num float = 324544.95
DECLARE @str nvarchar(50) = STR(@num, LEN(@num), 16)
PRINT @str
PRINT LEN(@str)
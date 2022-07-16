EXEC sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO
EXEC sp_configure 'xp_cmdshell', 1
GO
RECONFIGURE
GO
DECLARE @var nvarchar(200)
SET @var = CAST(SYSDATETIME() AS nvarchar)
SET @var = REPLACE(@var, ' ', '.')
SET @var = REPLACE(@var, ':', '.')
DECLARE @text nvarchar(200) = 'some text message'
DECLARE @query nvarchar(200) = 'echo ' + @var + CONCAT(' > C:/1/', @var) + '.txt'
EXEC xp_cmdshell @query
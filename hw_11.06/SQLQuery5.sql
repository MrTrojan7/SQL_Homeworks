DECLARE @M int = 3
DECLARE @N int = 10
DECLARE @counter int = 0;   
DECLARE @str nvarchar(64) = ''
DECLARE @password int = RAND()*@N + @M
WHILE @counter < @password  
   BEGIN  
      SET @str += CHAR(RAND() * 255)
      SET @counter += 1  
   END; 
   PRINT @str
GO
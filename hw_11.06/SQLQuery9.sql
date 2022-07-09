DECLARE @numberOfTicket int = 100000
DECLARE @firstPart int
DECLARE @secondPart int
WHILE @numberOfTicket < 1000000
	BEGIN
		SET @firstPart = @numberOfTicket/100000 + 
							@numberOfTicket/10000%10 +
							@numberOfTicket/1000%10
		SET @secondPart = @numberOfTicket%10 + 
							@numberOfTicket/10%10 +
							@numberOfTicket/100%10
		IF @firstPart = @secondPart
			BEGIN
				PRINT @numberOfTicket
			END
		SET @numberOfTicket +=1
	END
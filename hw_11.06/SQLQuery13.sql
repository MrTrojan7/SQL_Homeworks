DECLARE @str nvarchar(50) = '� ��� �����, ����'
DECLARE @copy_str nvarchar(50) = @str
DECLARE @mid int
DECLARE @tmp nvarchar(50)
DECLARE @tmp2 nvarchar(50)

WHILE CHARINDEX(' ', @copy_str) > 0 OR CHARINDEX(',', @copy_str) > 0-- ������� ������� � ������� (���� ����)
	BEGIN
      SET @copy_str = REPLACE(@copy_str, ' ', '')
	  SET @copy_str = REPLACE(@copy_str, ',', '')
	END

SET @mid = (LEN(@copy_str) / 2) -- �������� ������

IF((LEN(@copy_str) % 2) = 0) -- ��������� ������ (���� ���-�� �������� ��������)
	BEGIN
		SET @tmp = SUBSTRING(@copy_str, 1, @mid)
		SET @tmp2 = SUBSTRING(@copy_str, @mid + 1, (LEN(@copy_str)))
	END
IF((LEN(@copy_str) % 2) != 0) -- ��������� ������ (���� ���-�� �������� ��������)
	BEGIN
		SET @tmp = SUBSTRING(@copy_str, 1, @mid + 1)
		SET @tmp2 = SUBSTRING(@copy_str, @mid + 1, (LEN(@copy_str)))
	END
SET @tmp2 = REVERSE(@tmp2) -- �������������� ������ ������

-- ���������� ������
--PRINT @copy_str + ' ' + CAST(LEN(@copy_str) AS nvarchar)
--PRINT @tmp + ' ' + CAST(LEN(@tmp) AS nvarchar)
--PRINT @tmp2 + ' ' + CAST(LEN(@tmp2) AS nvarchar)
--���������� ������
PRINT 'string "' + @str + '" is:'
-- ����������:
IF(@tmp = @tmp2)
	BEGIN
	PRINT 'palindrom' -- ������ - ���������
	END
IF(@tmp != @tmp2)
	BEGIN
	PRINT 'not palindrom' -- ������ - �� ���������
	END
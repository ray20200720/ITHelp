/* 	Date: 2021/5/7
 * 	Title: SQL Server - IF-ELSE
 * 
 * */

--Example_01
IF (1>3)
	SELECT '1>3'
ELSE
	SELECT '1<3'

--Example_02
IF (1>3)
	BEGIN
		--SELECT '1>3';
		SELECT 'TRUE', '1>3';
		
	END
ELSE
	BEGIN
		--SELECT '1<3';
		SELECT 'FALSE', '1<3';
	END

--Example_03
DECLARE @TEST INT

SET @TEST = 0

IF @TEST > 0
	BEGIN
		--PRINT 'TEST>0'
		SELECT 'true' as 'True or False','TEST>0'  as Result
	END
ELSE
	BEGIN
		--PRINT 'ELSE'
		SELECT 'false' as 'True or False' , 'TEST <=0' as Result
	END

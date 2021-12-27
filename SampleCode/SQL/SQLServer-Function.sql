/* 	Date: 2021/5/7
 * 	Title: SQL Server - Function
 * 
 * */

-- No Argument
--create function
CREATE FUNCTION dbo.fn_SayHello()
RETURNS NVARCHAR(30)

BEGIN
	RETURN 'Hello'
END;

--execute function
SELECT dbo.fn_SayHello();

--delete function
DROP FUNCTION dbo.fn_SayHello;

--Two Argument
--create function
CREATE FUNCTION [dbo].[fn_AddTwoValue](
	@NUM1 INT, @NUM2 INT
)
RETURNS INT

BEGIN
	DECLARE @SUM INTEGER;
	SET @SUM = (SELECT  @NUM1 + @NUM2);
	RETURN @SUM;
END

 --execute function
SELECT [dbo].[fn_AddTwoValue](4,10)

--delete function
DROP FUNCTION dbo.fn_AddTwoValue;

--built-in function
SELECT GETDATE() AS TODAY
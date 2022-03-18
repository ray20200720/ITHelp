/* 	Date: 2022/3/18
 * 	Title: SQL Server - DECLARE & SET
 * 
 * */

--Example_01
DECLARE @count int

SET @count = 1

SELECT @count


--Example_02
DECLARE @count int, @x int, @y nvarchar(10)

-- 檢查變數的初始值
SELECT [@count] = @count, [@x] = @x, [@y] = @y

-- 使用 SET 指派值
SET @count = 1

-- 使用 SELECT 指派值
SELECT @x = 0, @y = 'alexc'

-- 檢查變數的設定值
SELECT [@count] = @count, [@x] = @x, [@y] = @y
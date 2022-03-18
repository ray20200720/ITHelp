/* 	Date: 2022-03-18
 * 	Title: SQL Server - DATEDIFF & DATEADD
 * 	Reference: 
 * 		https://www.fooish.com/sql/sql-server-datediff-function.html
 * 		https://ithelp.ithome.com.tw/articles/10007971
 *
 * 	DATEDIFF() 語法 (Syntax): 
 * 
 * 		DATEDIFF(datepart, startdate, enddate)
 * 
 *	DATEDIFF() 執行後會返回一個正負數的整數，表示 enddate - startdate 的時間間隔，datepart 參數則用來指定返回值的單位。 	
 *		
 *	datepart (全名和縮寫)	說明
 *	year, yyyy, yy			年
 *	month, mm, m			月
 *	day, dd, d				日
 *	hour, hh				時
 *	minute, n				分
 *	second, ss, s			秒
 *	millisecond, ms			毫秒
 *	microsecond, mcs		微秒
 *	nanosecond, ns			毫微秒
 *	quarter, qq, q			季
 *	dayofyear, dy, y		一年中的第幾天
 *	week, wk, ww			週
 *
 *
 */

--Example_01
SELECT DATEDIFF(YEAR , '', getdate()) AS [1900至今相差多少年], (2022-1900) AS [2022-1900]

--Example_02
SELECT DATEDIFF(mm , '', getdate()) AS 	[1900至今相差多少個月], (2022-1900)*12 + 2 AS [(2022-1900) + 2]

--Example_03
-- 精確到毫秒
SELECT DATEADD(mm, DATEDIFF(mm, '', getdate()), '') AS [本月第一天(精確到毫秒)]

-- 使用 CAST 轉換日期輸出的格式
SELECT CAST(DATEADD(mm, DATEDIFF(mm, '', getdate()), '') AS VARCHAR(20)) AS [本月第一天(僅到分)]

-- 使用 CONVERT 轉換日期輸出的格式
SELECT CONVERT(VARCHAR(20), DATEADD(mm, DATEDIFF(mm, '', getdate()), ''), 101) AS [本月第一天(僅到日)]
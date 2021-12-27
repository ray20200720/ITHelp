/*  TITLE: 建立#TempTable與Declare @TempTable及其差異
 * 
 * */

-- Create Table
--Create Table是建立一個區域性的暫存資料表（Local ），簡單地說，就是在 tempdb 資料庫中，建立一個名稱為 #TempTabel 的資料表（位於暫存資料表中），
--這個暫存資料表只有建立者可以使用，其他人可以看到，但無法存取。
--除非利用 DROP TABLE 來明確卸除暫存資料表，否則當建立該暫存資料表的連線結束時，SQL Server 會自動將其刪除。
--此Table存在Databases -> System Databases -> tempdb -> Temporary Tables -> 
Create Table #TempTable(
	FirstName varchar(20),
	LastName varchar(20)
)

INSERT INTO #TempTable (FirstName, LastName)
SELECT TOP 2 ProductID as FirstName, Model as LastName
FROM Product

SELECT TOP 3 ProductID as FirstName, Model as LastName FROM Product
--SELECT * FROM tempdb.#TempTable
SELECT * FROM #TempTable

drop table #TempTalbe


-- DECLARE Table
--DECLARE Table則是建立一個 table 資料型別的暫存資料表，它是存在記憶體中的。
--因此其他人無法看到，此外當定義 table 資料型別的函數、預存程序或批次結束時，就會自動清除這個暫存資料表。
DECLARE @TempTable TABLE (
	FirstName varchar(20),
	LastName varchar(20)
)

INSERT INTO @TempTable (FirstName, LastName)
SELECT TOP 2 ProductID as FirstName, Model as LastName
FROM Product

SELECT * FROM @TempTable
WAITFOR DELAY '00:00:15' --延後15秒執行


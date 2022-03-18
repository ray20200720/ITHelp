* [如何在 T-SQL 中宣告變數](https://ithelp.ithome.com.tw/articles/10009411)

DECLARE @count int, @x int, @y nvarchar(10)

-- 檢查變數的初始值
SELECT [@count] = @count, [@x] = @x, [@y] = @y

-- 使用 SET 指派值
SET @count = 1

-- 使用 SELECT 指派值
SELECT @x = 0, @y = 'alexc'

-- 檢查變數的設定值
SELECT [@count] = @count, [@x] = @x, [@y] = @y


* [刪除整個資料表，使用Delete、Truncate Table與Drop Table的差異](https://byron0920.pixnet.net/blog/post/85759990)

許多情況下，我們需要刪除整個資料表內的資料，重新輸入新資料，有三種方法可以參考使用，分別是使用Delete、Trancate與Drop，那使這三種方式的差異為何呢?

一、使用Delete :

使用Delete語法，不加任何Where條件下，是可以移除整個Table的資料，這個方式簡單易懂，但是卻會耗用大量資源，因為Delete語法：

1.Delete屬DML命令，不加任何Where條件下，會一筆一筆的移除資料列，且在交易記錄中每筆刪除的資料，都會記錄成一個項目，當整個Table的資料移除完時，已耗用許多時間。

2.若Table存在刪除的觸發程序(Trigger)時，將會引發觸發程序。

3.如果該Table包含識別欄位，使用Delete陳述式刪除資料表中所有資料時，並不會讓識別編號重置，所以後續再新增的資料，仍會從之前最後一個編號之後繼續編號下去

 

二、使用Truncate :

使用Truncate Table 會移除資料表中的所有資料列，但會保留資料表結構及其欄位、條件約束、索引等。

如果該Table包含識別欄位，這個識別編號會重設為原本定義的初始值。如果未定義任何初始值，就會使用預設值 1。

Trance Table 與Delete 比較的優點為：

1.使用的交易記錄空間較少：Truncate Table會取消配置用來儲存資料表資料的資料頁，以移除資料，所以交易記錄只會記錄頁面的取消配置。

2.通常會使用較少鎖定：Delete會鎖定每一筆資料，以便執行刪除，但Truncate Table只鎖定資料表和頁面，不會鎖定每個資料列。

3.速度較快：綜合以上兩點，Truncate Table會比Delete快！

Truncate Table 語法範例：

TRUNCATE TABLE MyTestTable
 


三、使用Drop Table：

使用Drop Tablec會移除一或多個資料表定義及這些資料表的所有資料、索引、觸發程序、條件約束和權限規格，也就是完全刪除一個資料表。

當卸除資料表時，資料表的規則或預設值會失去它們的繫結，資料表的任何相關條件約束或觸發程序也都會自動卸除。如果重新建立資料表，您必須重新繫結適當的規則和預設值、重新建立任何觸發程序，以及加入所有必要的條件約束。

所以使用Drop Table後，若你要重新使用被刪除的資料表，就只好重新Create Table了，但是要注意，Drop Table 和 Create Table 不得在相同批次的相同資料表上執行。否則，系統可能會發生非預期的錯誤。
Drop Table 語法範例：

DROP TABLE MyTestTable


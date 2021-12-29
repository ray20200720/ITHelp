C# DataTable Example
==============

DataTable用法
--------------

先創建一個DataTable ` DataTable dt = new DataTable(); `

Column增加Id

` dt.Columns.Add("Id"); `

Column增加Name

` dt.Columns.Add("Name"); `

Row增加資料

` dt.Rows.Add("1", "kobe"); `
` dt.Rows.Add("2", "jordan"); `
` dt.Rows.Add("3", "yao"); ` 

輸出結果

1       kobe
2       jordan
3       yao

參考連結
-------

* [DataTableExample.cs](DataTableExample.cs)


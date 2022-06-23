<Query Kind="Program" />

void Main()
{
	DataTable dt = new DataTable();
	DataColumn dc = new DataColumn();
	dc.DataType = typeof(string);
	dc.ColumnName = "BookName";
	dt.Columns.Add(dc);
	
	dc = new DataColumn();
	//dc.DataType = typeof(int);
	dc.DataType = typeof(int);
	dc.ColumnName = "Price";
	dt.Columns.Add(dc);
	
	DataRow newDataRow = dt.NewRow();
	newDataRow["BookName"] = "C# Cookbook";
	newDataRow["Price"] = 50;
	dt.Rows.Add(newDataRow);
	
	newDataRow = dt.NewRow();
	newDataRow["BookName"] = "ASP.NET Cookbook";
	newDataRow["Price"] = 40;
	dt.Rows.Add(newDataRow);
	
	dt.Dump();
}

// Define other methods and classes here

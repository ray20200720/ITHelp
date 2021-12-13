<Query Kind="Program" />

void Main()
{
	var lst = new List<string>(){"yao"};
	var tmptable = getTmptable(); 
	var tmpret = from a in tmptable.AsEnumerable()
                              from b in lst
                              where a.Field<string>("Name").ToUpper().Contains(b.ToUpper())
                              select a;

	tmpret.Dump();                    
}

// Define other methods and classes here
public DataTable getTmptable()
{
    DataTable table = new DataTable();
    table.Columns.Add("Id");
    table.Columns.Add("Name");

    table.Rows.Add("1", "kobe");
    table.Rows.Add("2", "jordan");
    table.Rows.Add("3", "yao");
    return table;    
}

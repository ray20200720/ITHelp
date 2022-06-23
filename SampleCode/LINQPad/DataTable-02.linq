<Query Kind="Program" />

void Main()
{
	{
        var query = GetConsumerTable();
        query.Dump("原始資料");
    }
    
    {
        var query = from row in GetConsumerTable().AsEnumerable()
                    where row.Field<string>("Name").Length > 4
                    select row ;
                    
        query.Dump();
    }
}

// Define other methods and classes here
public DataTable GetConsumerTable()
{
    DataTable table = new DataTable();
    table.Columns.Add("Id");
    table.Columns.Add("Name");

    table.Rows.Add("1", "kobe");
    table.Rows.Add("2", "jordan");
    table.Rows.Add("3", "yao");
    return table;    
}
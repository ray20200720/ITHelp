<Query Kind="Program" />

void Main()
{
	DataTable dt = new DataTable("Order");  
	DataColumn dc = dt.Columns.Add("ID", typeof(int));  
	dt.Columns.Add("Name", typeof(String));  
	  
	dt.Rows.Add(1, "pramod");  
	dt.Rows.Add(2, "ravi");  
	dt.Rows.Add(3, "deepak");  
	dt.Rows.Add(4, "kiran");  
	dt.Rows.Add(5, "madhu");
	
	DataTable dt2 = new DataTable("Order");  
	DataColumn dc2 = dt2.Columns.Add("ID", typeof(int));  
	dt2.Columns.Add("Name", typeof(String));  
	dt2.Columns.Add("Type", typeof(String));  
 
	dt2.Rows.Add(6, "ashu","Gen");  
	dt2.Rows.Add(7, "rudra", "Gen");  
	dt2.Rows.Add(8, "kavita", "Gen");  
	dt2.Rows.Add(9, "suman", "Gen");  
	dt2.Rows.Add(10, "lakshman", "Gen");
	
	dt.Merge(dt2); 
	dt.Dump();
}


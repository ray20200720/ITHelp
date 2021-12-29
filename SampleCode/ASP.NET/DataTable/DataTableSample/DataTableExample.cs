using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

class DataTableExample
{
    public static void Main()
    {
        //Sample-01: Create DataTable and Add some data.
        DataTable dt = new DataTable();
        dt.Columns.Add("Id");
        dt.Columns.Add("Name");

        dt.Rows.Add("1", "kobe");
        dt.Rows.Add("2", "jordan");
        dt.Rows.Add("3", "yao");

        for (int r = 0; r < dt.Rows.Count; r++)
        {
            for (int c = 0; c < dt.Columns.Count; c++)
            {
                Console.Write(dt.Rows[r][c].ToString() + "\t");
            }
            Console.WriteLine();
        }

        //Sample-02: Use Params and Lambda
        //reset data
        dt.Columns.Clear();
        dt.Rows.Clear();
        string[] header = { "Id", "Name" };
        dt.Columns.Add(header[0]);
        dt.Columns.Add(header[1]);

        WriteHeader(header);
        WriteData(dt);
        ShowDataTable(dt, header);

        //Sample-03: LINQ Query)
        WriteHeader("After LINQ Query");
        var query = from row in dt.AsEnumerable()
                    where row.Field<string>("Name").Length > 4
                    select row;

        foreach (DataRow dr in query)
        {
            Console.Write(dr["Id"] + "\t" + dr["Name"]);
        }
        Console.WriteLine();

        //Use query.ToList().ForEach(m=>m.Field<string>(\"Id\")
        WriteHeader("Use LINQ Query and query.ToList().ForEach(m=>m.Field<string>(\"Id\"))");
        query.ToList().ForEach(m => Console.WriteLine("{0}\t{1}\t", m.Field<string>("Id"), m.Field<string>("Name")));


        //Sample-04: Use LINQ Query and query.ToList().ForEach(m => m.Id, m.Name) 
        WriteHeader("Use LINQ Query and query.ToList().ForEach(m => m.Id, m.Name)");
        var query2 = from row in dt.AsEnumerable()
                     where row.Field<string>("Name").Length > 4
                     select new
                     {
                         Id = row.Field<string>("Id"),
                         Name = row.Field<string>("Name")
                     };

        query2.ToList().ForEach(m => Console.WriteLine("{0}\t{1}\t", m.Id, m.Name));

        Console.ReadKey();
    }

    static void WriteHeader(params string[] cols)
    {
        for (int i = 0; i < cols.Length; i++)
        {
            Console.Write(cols[i]);
            Console.Write("\t");
        }
        Console.WriteLine();
    }

    static void ShowDataTable(DataTable dt, string[] header)
    {
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            for (var j = 0; j < header.Length; j++)
            {
                Console.Write(dt.Rows[i][header[j]].ToString());
                Console.Write("\t");
            }
            Console.WriteLine();
        }
    }

    static void WriteData(DataTable dt)
    {
        dt.Rows.Add("1", "kobe");
        dt.Rows.Add("2", "jordan");
        dt.Rows.Add("3", "yao");
    }
}
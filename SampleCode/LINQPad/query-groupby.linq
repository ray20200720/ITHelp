<Query Kind="Program" />

public class Product
{
	public string ProductID { get; set; }
    public int Qty { get; set; }
	public int Price { get; set; }
	public string Type { get; set; }
}

void Main()
{
	List<Product> products = new List<Product> 
 						{ 
                           new Product { ProductID = "1", Qty = 1, Price = 10, Type="Book" },
                           new Product { ProductID = "2", Qty = 2, Price = 20, Type="Book" },
                           new Product { ProductID = "3", Qty = 3, Price = 10, Type="Book" },
                           new Product { ProductID = "4", Qty = 4, Price = 140, Type="DVD" },
                           new Product { ProductID = "5", Qty = 5, Price = 150, Type="DVD" } 
						};

	// 使用 group by依據產品類型分類
    var query = from pn in products
                group pn by pn.Type;

	query.Dump();
}
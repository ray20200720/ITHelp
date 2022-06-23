<Query Kind="Program" />

public class Product
{
	public string ProductID { get; set; }
    public int Qty { get; set; }
	public int Price { get; set; }
}

void Main()
{
	List<Product> products = new List<Product> 
 						{ 
                           new Product { ProductID = "1", Qty = 1, Price = 10 },
                           new Product { ProductID = "2", Qty = 2, Price = 20 },
                           new Product { ProductID = "3", Qty = 3, Price = 130 },
                           new Product { ProductID = "4", Qty = 4, Price = 140 },
                           new Product { ProductID = "5", Qty = 5, Price = 150 } 
						};

	// 使用 from, where, select 標準查詢子來找出價格大於100的產品
    var query = from pn in products
                where pn.Price >= 100
                select pn;

	query.Dump();
}
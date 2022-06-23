<Query Kind="Program" />

void Main()
{
	var riskPoList = new List<RiskPOInfo> { 
			new RiskPOInfo() { SN="N6NRKD008976237", PoNo="111221000298915000010", Model="LCE230ADT16Y",BindRiskQty=1},
			new RiskPOInfo() { SN="N6NRKD008976238", PoNo="111221000298915000010", Model="LCE230ADT16Y",BindRiskQty=1}	
		};
	
 	var newRiskPoList = from riskPo in riskPoList
                    group riskPo by new { riskPo.PoNo, riskPo.Model, riskPo.PoQty, riskPo.BindRiskQty } into g
					select new 
					{
						PoNo = g.Key.PoNo,
						Model  = g.Key.Model,
						PoQty = g.Key.PoQty,
						BindRiskQty = g.Sum(x => x.BindRiskQty),
					};
                    
                        
	newRiskPoList.Dump();
}

// Define other methods and classes here
public class RiskPOInfo
{
    public string SN;
    public string PoNo;
    public string Model;
    public string PoQty;
    public string BindQty;
    public int BindRiskQty;
    public int PendingRiskQty;

    
}

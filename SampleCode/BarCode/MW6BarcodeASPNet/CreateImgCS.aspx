<%@ Page Language="C#" %>
<%@ assembly name="MW6.ASPNET.Barcode" %>
<%@ import Namespace="System.Drawing" %>
<%@ import Namespace="System.Drawing.Drawing2D" %>
<%@ import Namespace="MW6.ASPNET.Barcode" %>
<script runat="server">

    void OutputImg()
    {
		Bitmap objBitmap;
		string FontName = "";
		Graphics objGraphics;
		int ActualWidth = 0;
		int ActualHeight = 0;
		int ExtraWidth, ExtraHeight;
		Point p;

		Response.ContentType = "image/Gif";

		BarcodeNet MyBarcode = new BarcodeNet();
		MyBarcode.BackColor =  Color.FromName(Request.QueryString["BackColor"]);
		MyBarcode.BarColor =  Color.FromName(Request.QueryString["BarColor"]);
		MyBarcode.CheckDigit = true;
		MyBarcode.CheckDigitToText = true;
        MyBarcode.Data = System.Web.HttpUtility.UrlDecode(Request.QueryString["Data"]);
		MyBarcode.BarHeight = (float)System.Convert.ToDouble(Request.QueryString["BarHeight"]);
		MyBarcode.NarrowBarWidth = (float)System.Convert.ToDouble(Request.QueryString["NarrowBarWidth"]);
		MyBarcode.Orientation = (enumOrientation)System.Convert.ToInt16(Request.QueryString["Orientation"]);
		MyBarcode.SymbologyType = (enumSymbologyType)System.Convert.ToInt16(Request.QueryString["Symbology"]);
		MyBarcode.ShowText = (Request.QueryString["ShowText"]=="ON");
		MyBarcode.Wide2NarrowRatio = (float)System.Convert.ToDouble(Request.QueryString["Wide2NarrowRatio"]);

		if (System.Convert.ToInt16(Request.QueryString["FontName"]) == 0)
			FontName = "Arial";
		else if (System.Convert.ToInt16(Request.QueryString["FontName"]) == 1)
			FontName = "Book Antiqua";
		else if (System.Convert.ToInt16(Request.QueryString["FontName"]) == 2)
			FontName = "Courier New";
		else if (System.Convert.ToInt16(Request.QueryString["FontName"]) == 3)
			FontName = "Times New Roman";
	
		MyBarcode.TextFont = new Font(FontName, System.Convert.ToInt16(Request.QueryString["FontSize"]));
		
		// Get actual barcode width and height
		MyBarcode.GetActualSize(ref ActualWidth, ref ActualHeight);

		ExtraWidth = System.Convert.ToInt16(Request.QueryString["ExtraWidth"]);
		ExtraHeight = System.Convert.ToInt16(Request.QueryString["ExtraHeight"]);
	
		// Image size = barcode size + extra space
		if (System.Convert.ToInt16(Request.QueryString["Orientation"]) == 0 ||
		    System.Convert.ToInt16(Request.QueryString["Orientation"]) == 2) {
			MyBarcode.SetSize(ActualWidth + ExtraWidth, ActualHeight + ExtraHeight);
			objBitmap = new Bitmap(ActualWidth + ExtraWidth, ActualHeight + ExtraHeight);
		}
		else {
			MyBarcode.SetSize(ActualHeight + ExtraWidth, ActualWidth + ExtraHeight);
			objBitmap = new Bitmap(ActualHeight + ExtraWidth, ActualWidth + ExtraHeight);
		}
		
		objGraphics = Graphics.FromImage(objBitmap);

		p = new Point(0, 0) ;
		MyBarcode.Render(objGraphics, p);
		objGraphics.Flush();

		objBitmap.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);
    }

</script>
<% OutputImg(); %>

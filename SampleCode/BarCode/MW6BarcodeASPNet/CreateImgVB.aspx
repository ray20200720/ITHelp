<%@ Page Language="VB" Debug="true" %>
<%@ assembly name="MW6.ASPNET.Barcode" %>
<%@ import Namespace="System.Drawing" %>
<%@ import Namespace="System.Drawing.Drawing2D" %>
<%@ import Namespace="MW6.ASPNET.Barcode" %>
<script runat="server">

    Sub OutputImg

		Dim objBitmap As Bitmap
		Dim objGraphics As Graphics
		Dim ActualWidth As Integer
		Dim ActualHeight As Integer
		Dim ExtraWidth As Integer
		Dim ExtraHeight As Integer
		Dim FontName As String
		Dim MyBarcode As BarcodeNet
		Dim p As Point

		Response.ContentType = "image/gif"

		MyBarcode = New BarcodeNet()

		MyBarcode.BackColor = Color.FromName(Request.QueryString("BackColor"))
		MyBarcode.BarColor = Color.FromName(Request.QueryString("BarColor"))
		MyBarcode.CheckDigit = True
		MyBarcode.CheckDigitToText = True
        MyBarcode.Data = System.Web.HttpUtility.UrlDecode(Request.QueryString("Data"))
		MyBarcode.BarHeight = System.Convert.ToDouble(Request.QueryString("BarHeight"))
		MyBarcode.NarrowBarWidth = System.Convert.ToDouble(Request.QueryString("NarrowBarWidth"))
		MyBarcode.Orientation = System.Convert.ToInt16(Request.QueryString("Orientation"))
		MyBarcode.SymbologyType = System.Convert.ToInt16(Request.QueryString("Symbology"))
		MyBarcode.ShowText = CBool(Request.QueryString("ShowText")="ON")
		MyBarcode.Wide2NarrowRatio = System.Convert.ToDouble(Request.QueryString("Wide2NarrowRatio"))

		If (System.Convert.ToInt16(Request.QueryString("FontName")) = 0) Then
			FontName = "Arial"
		Elseif (System.Convert.ToInt16(Request.QueryString("FontName")) = 1) Then
			FontName = "Book Antiqua"
		Elseif (System.Convert.ToInt16(Request.QueryString("FontName")) = 2) Then
			FontName = "Courier New"
		Elseif (System.Convert.ToInt16(Request.QueryString("FontName")) = 3) Then
			FontName = "Times New Roman"
		End If
	
		MyBarcode.TextFont = new Font(FontName, System.Convert.ToInt16(Request.QueryString("FontSize")))
		
		' Get actual barcode width and height
		MyBarcode.GetActualSize(ActualWidth, ActualHeight)

		ExtraWidth = System.Convert.ToInt16(Request.QueryString("ExtraWidth"))
		ExtraHeight = System.Convert.ToInt16(Request.QueryString("ExtraHeight"))
		
		' Image size = barcode size + extra space
		If (System.Convert.ToInt16(Request.QueryString("Orientation")) = 0 Or _
		    System.Convert.ToInt16(Request.QueryString("Orientation")) = 2) Then
			MyBarcode.SetSize(ActualWidth + ExtraWidth, ActualHeight + ExtraHeight)
			objBitmap = new Bitmap(ActualWidth + ExtraWidth, ActualHeight + ExtraHeight)
		Else 
			MyBarcode.SetSize(ActualHeight + ExtraWidth, ActualWidth + ExtraHeight)
			objBitmap = new Bitmap(ActualHeight + ExtraWidth, ActualWidth + ExtraHeight)
		End If
		
		objGraphics = Graphics.FromImage(objBitmap)
		p = new Point(0, 0) 
		MyBarcode.Render(objGraphics, p)
		objGraphics.Flush()

		objBitmap.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.gif)
        
    End Sub
        
</script>

<% OutputImg %>
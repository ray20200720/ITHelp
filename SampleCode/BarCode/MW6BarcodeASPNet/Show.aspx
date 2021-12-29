<HTML>

<table>
<tr><td>
<%
dim MyStr

If (Request.Form("Language") = "VB.Net") then
	MyStr = "<img src=CreateImgVB.aspx?"
Else
	MyStr = "<img src=CreateImgCS.aspx?"
End If

' Background color
MyStr = MyStr +"BackColor=" + Request.Form("BackColor")

' Bar color
MyStr = MyStr + "&BarColor=" + Request.Form("BarColor")

' Data to Encode
MyStr = MyStr + "&Data=" + Server.URLEncode(Request.Form("Data"))

' Narrow Bar Width
MyStr = MyStr + "&NarrowBarWidth=" + Request.Form("NarrowBarWidth")

' Bar Height
MyStr = MyStr + "&BarHeight=" + Request.Form("BarHeight")

' Orientation
MyStr = MyStr + "&Orientation=" + Request.Form("Orientation")

' Width (in Pixels) of Surrounding White Space
MyStr = MyStr + "&ExtraWidth=" + Request.Form("ExtraWidth")

' Height (in Pixels) of Surrounding White Space
MyStr = MyStr + "&ExtraHeight=" + Request.Form("ExtraHeight")

' Font Name
MyStr = MyStr + "&FontName=" + Request.Form("FontName")

' Font Size
MyStr = MyStr + "&FontSize=" + Request.Form("FontSize")

' Symbology Type
MyStr = MyStr + "&Symbology=" + Request.Form("Symbology")

' Display Message?
MyStr = MyStr + "&ShowText=" + Request.Form("ShowText")

' Ratio of Wide Bar To Narrow Bar
MyStr = MyStr + "&Wide2NarrowRatio=" + Request.Form("Wide2NarrowRatio")

MyStr = MyStr + ">"

Response.Write(MyStr)
%>
</td></tr>

<tr><td align=center>
<A href="demo.html">Create another barcode</A>
</td></tr>
</HTML>


FOP tutorial
============

AUTHORS: Ray Kuo

目錄
------
* [第 01 天：產生PDF](01.md)
* [第 02 天：指定字體大小](02.md)
* [第 03 天：指定字體顏色](03.md)
* [第 04 天：指定字形和顏色](04.md)
* [第 05 天：修改字形為斜體和粗體](05.md)
* [第 06 天：使用xml和xsl產生fo及pdf](06.md)
* [第 07 天：使用Java產生pdf](07.md)
* [第 08 天：使用Java產生fo及pdf](08.md)
* [第 09 天：使用C#產生pdf](09.md)
* [第 10 天：使用C#產生fo及pdf](10.md)
* [第 11 天：在ASP.NET Web網頁產生pdf](11.md)

準備工作
-------

先將fop-2.6.zip解壓縮後放在tutorial目錄底下

fop命令使用
----------

* 由fo產生PDF:

    `fop-2.6\fop -fo Hello-01.fo Hello-01.pdf`

* 由xml和xsl產生fo:

    `fop-2.6\fop -xml Hello-06.xml -xsl Hello-06.xsl Hello-06.fo`

* 由xml和xsl產生pdf:

    `fop-2.6\fop -xml Hello-06.xml -xsl Hello-06.xsl -pdf Hello-06.pdf`

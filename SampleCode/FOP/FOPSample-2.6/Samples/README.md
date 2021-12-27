FOP tutorial
============

AUTHORS: Ray Kuo

目錄
------
* [第 01 天：產生PDF](tutorial\01.md)
* [第 02 天：修改字體大小](tutorial\02.md)
* [第 03 天：修改字體顏色](tutorial\03.md)
* [第 04 天：使用xml和xsl產生fo及pdf](tutorial\04.md)
* [第 05 天：使用Java產生pdf](tutorial\05.md)
* [第 06 天：使用Java產生fo及pdf](tutorial\06.md)
* [第 07 天：使用C#產生pdf](tutorial\07.md)
* [第 08 天：使用C#產生fo及pdf](tutorial\08.md)
* [第 09 天：在ASP.NET Web網頁產生pdf](tutorial\09.md)
* [第 10 天：TODO](tutorial\10.md)
* [第 11 天：TODO](tutorial\11.md)
* [第 12 天：TODO](tutorial\12.md)
* [第 13 天：TODO](tutorial\13.md)
* [第 14 天：TODO](tutorial\14.md)
* [第 15 天：TODO](tutorial\15.md)
* [第 16 天：TODO](tutorial\16.md)
* [第 17 天：TODO](tutorial\17.md)
* <a href="tutorial\18.md">第 18 天：TODO</a>

準備工作
-------

先將fop-2.6.zip解壓縮後放在tutorial目錄底下

fop命令使用
----------

* 由fo產生PDF:

    `fop -fo Hello-01.fo Hello-01.pdf`

* 由xml和xsl產生fo:

    `fop -xml Hello-04.xml -xsl Hello-04.xsl Hello-04.fo`

* 由xml和xsl產生pdf:

    `fop -xml Hello-04.xml -xsl Hello-04.xsl -pdf Hello-04.pdf`

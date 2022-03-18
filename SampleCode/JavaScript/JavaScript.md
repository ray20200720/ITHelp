* JS多個檔案定義了名稱相同但參數類型不同或參數個數不同的方法,JS不是根據參數個數決定要調用的方法.
  而是用後蓋前,後面引用的js的方法會蓋掉前面引用的js的方法
    實例:
    a.js
    `function doSomething(filename) {           `
    `    alert("Hi, I'm from a.js" + filename); `
    `}                                          `
    
    b.js
    `function doSomething(filename, type) {     `
    `    alert("Hi, I'm from b.js" + filename); `
    `}                                          `

    index.html
    <html>
    <head>
    <script src="a.js"></script>
    <script src="b.js"></script>
    </head>
    <body>
    <script>
        doSomething('pass a');
    </script>
    </body>
    </html>

    結論:
        畫面會顯示Hi, I'm from b.js pass a


* JS的几种关键词的查找方法
    1. `var i = str.indexOf("关键词",开始位置)`
        在str中，从“开始位置”开始，查找下一个“关键词”的位置
        返回值:下一个"关键词"的第一个字的下标位置，如果找不到就返回-1
        如果省略第二个参数-开始位置:默认从0开始找
        查找最后一个关键词的位置:
        `var i = str.lastIndexOf("关键词");`
    2. `var i = str.search(/正则表达式/);`
        返回值:返回第一个找到的匹配的关键词的位置,如果没找到返回-1
        问题:永远只能找第一个且只能返回位置，无法返回关键词的内容
    3. `var arr = str.match(/正则表达式/)`
        返回值:包含所有找到的敏感词的内容的数组
        找不到就返回null
        问题:只能获取关键词的内容，无法获取关键词的位置
    4. `str = str.replace(/正则表达式/,"替换值")`
        强调:replace无权直接修改原字符串，只能返回新字符串，所以必须
        用变量接住替换后的新内容。
        高级替换:根据每个敏感词的不同，动态选择对应的替换值
        
        `str=str.replace(/正则表达式/,function(kword){`
        `    //kword:自动获取本次找到的敏感词           `
        `    return 根据kword的不同，选择不同的替换值返回`
        `})                                         `

版权声明：本文为CSDN博主「qq_41468239」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/qq_41468239/article/details/80988358

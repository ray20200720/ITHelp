C# NLog
==============

NLog用法
--------------

1. 安裝NLog
2. 配置NLog
    1. 直接在App.Config設定
        <?xml version="1.0" encoding="utf-8" ?>
        <configuration>
        <configSections>
        <section name="nlog" type="NLog.Config.ConfigSectionHandler, NLog"/>
        </configSections>
        <nlog xmlns="http://www.nlog-project.org/schemas/NLog.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <targets>
        <target name="console" xsi:type="Console" layout="${longdate}|${level}|${message}"/>
        <target name="logfile" xsi:type="File" fileName="nlog.file" layout="${longdate}|${level}|${message}"/>
        </targets>
        <rules>
        <logger name="*" minlevel="Debug" writeTo="console"/>
        <logger name="*" minlevel="Debug" writeTo="logfile"/>
        </rules>
        </nlog>
        <startup> 
        <supportedRuntime version="v4.0" sku=".NETFramework,Version=v4.5.2" />
        </startup>
        </configuration>
    2. 在App.Config添加引用NLog.config
        1. 創建NLog.config
            <?xml version="1.0" encoding="utf-8" ?>
            <nlog xmlns="http://www.nlog-project.org/schemas/NLog.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <targets>
            <target name="logfile" xsi:type="File" fileName="file.txt" />
            <target name="logconsole" xsi:type="Console" />
            </targets>
            <rules>
            <logger name="*" minlevel="Info" writeTo="logconsole" />
            <logger name="*" minlevel="Debug" writeTo="logfile" />
            </rules>
            </nlog>
        2. 在App.Config引用NLog.config
        <?xml version="1.0" encoding="utf-8" ?>
        <configuration>
        <configSections>
        <section name="nlog" type="NLog.Config.ConfigSectionHandler, NLog"/>
        </configSections>
        <nlog>
        <include file="NLog.config"/>
        </nlog>
        <startup> 
        <supportedRuntime version="v4.0" sku=".NETFramework,Version=v4.5.2" />
        </startup>
        </configuration>
    
    3. 在程式碼裡設定
    ` var config = new NLog.Config.LoggingConfiguration(); `
    ` // Targets where to log to: File and Console `
    ` var logfile = new NLog.Targets.FileTarget("logfile") { FileName = "file.txt" }; `
    ` var logconsole = new NLog.Targets.ConsoleTarget("logconsole"); `
            
    ` // Rules for mapping loggers to targets `
    ` config.AddRule(LogLevel.Info, LogLevel.Fatal, logconsole); `
    ` config.AddRule(LogLevel.Debug, LogLevel.Fatal, logfile);  `
            
    ` // Apply config `
    ` NLog.LogManager.Configuration = config; `
    
3. 程式寫log
    ` public static class Program `
    ` { `
    `     private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger(); `
    ` `
    `     public static void Main() `
    `     { `
    `         try `
    `         { `
    `           Logger.Info("Hello world"); `
    `           System.Console.ReadKey(); `
    `         } `
    `         catch (Exception ex) `
    `         { `
    `           Logger.Error(ex, "Goodbye cruel world");`
    `         } `
    `     } `
    ` }  `

參考連結
-------

* [NLog Tutorial](https://github.com/NLog/NLog/wiki/Tutorial)
* [NLog文章系列——入门教程（上）](https://www.cnblogs.com/dflying/archive/2006/12/05/583071.html)

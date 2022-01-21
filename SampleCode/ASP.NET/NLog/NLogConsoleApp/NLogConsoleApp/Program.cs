using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLog;

namespace NLogConsoleApp
{
    class Program
    {
        private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        static void Main(string[] args)
        {
            try
            {
                //GetNLogConfig();

                Logger.Info("Hello world");

                Logger.Trace("This is a Trace message");
                Logger.Debug("This is a Debug message");
                Logger.Info("This is an Info message");
                A();
                Logger.Warn("This is a Warn message");
                Logger.Error("This is an Error message");
                Logger.Fatal("This is a Fatal error message");

                System.Console.ReadKey();
            }
            catch (Exception ex)
            {
                Logger.Error(ex, "Goodbye cruel world");
            }
        }

        static void GetNLogConfig()
        {
            var config = new NLog.Config.LoggingConfiguration();

            // Targets where to log to: File and Console
            var logfile = new NLog.Targets.FileTarget("logfile") { FileName = "file.txt" };
            var logconsole = new NLog.Targets.ConsoleTarget("logconsole");

            // Rules for mapping Loggers to targets            
            config.AddRule(LogLevel.Info, LogLevel.Fatal, logconsole);
            config.AddRule(LogLevel.Debug, LogLevel.Fatal, logfile);

            // Apply config           
            NLog.LogManager.Configuration = config;
        }

        static void C()
        {
            Logger.Info("Info CCC");
        }

        static void B()
        {
            Logger.Trace("Trace BBB");
            Logger.Debug("Debug BBB");
            Logger.Info("Info BBB");
            C();
            Logger.Warn("Warn BBB");
            Logger.Error("Error BBB");
            Logger.Fatal("Fatal BBB");
        }

        static void A()
        {
            Logger.Trace("Trace AAA");
            Logger.Debug("Debug AAA");
            Logger.Info("Info AAA");
            B();
            Logger.Warn("Warn AAA");
            Logger.Error("Error AAA");
            Logger.Fatal("Fatal AAA");
        }
    }
}

using System;
interface ISampleInterface
{
    void SampleMethod();
}

class ImplementationClass : ISampleInterface
{
    void ISampleInterface.SampleMethod()
    {
        Console.WriteLine("Implementation Method");
    }

    static void Main()
    {
        ISampleInterface obj = new ImplementationClass();

        obj.SampleMethod();
    }
} 
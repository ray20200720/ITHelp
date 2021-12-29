using System;

class StringExample
{
    public static void Main()
    {
        string[] nameArray = { "A", "B", "C", "D"};
        string names = string.Join("-", nameArray);
        
        Console.WriteLine(names); //A-B-C-D
    }
}
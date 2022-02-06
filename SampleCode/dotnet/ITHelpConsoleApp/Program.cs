// See https://aka.ms/new-console-template for more information
/*
Console.WriteLine("Hello, World!");
int i = 123;
object o = i; // Boxing
int j = (int)o; // Unboxing
Console.WriteLine("i={0}, j={1}", i, j);
*/

using System.Reflection;

namespace TeleprompterConsole;

internal class Program
{
    static void Main(string[] args)
    {
	var names = new List<string> { "Ray", "Ana", "Felipe" };
	names.Add("Maria");
	names.Add("Bill");
	names.Remove("Ana");
	foreach(var name in names)
	{
	  Console.WriteLine($"Hello {name.ToUpper()}!");
	}

	Console.WriteLine($"My name is {names[0]}.");
	Console.WriteLine($"I've added {names[2]} and {names[3]} to the list.");
    }
}

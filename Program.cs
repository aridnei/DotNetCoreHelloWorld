using System;

namespace ConsoleApplication
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Enter your name:");
            var name = Console.ReadLine();
            Console.WriteLine("Hello {0}! Welcome to C#", name);
        }
    }
}

using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;


namespace ConsoleApplication
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var host = new WebHostBuilder()
            .UseKestrel()
            .UseStartup<Startup>();


            IWebHost builtHost = host.Build();
            builtHost.Run();
            
        }
    }


    public class Startup{

        public void Configure(IApplicationBuilder builder)
        {
            builder.Run(x=>x.Response.WriteAsync("Hello Vijay on the web!"));

        }
    }
}

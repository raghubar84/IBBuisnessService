using IBBusinessService.Api;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace IBBusinessConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("======================================================");
            Console.WriteLine("Press ENTER key to exit after receiving all the messages.");
            Console.WriteLine("======================================================");

            var webHost = Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>().Build();
            var serv = webHost.Services.GetRequiredService<IServiceBusConsumer>();            
            serv.RegisterOnMessageHandlerAndReceiveMessages();
            Console.ReadKey();            
        }
    }
}

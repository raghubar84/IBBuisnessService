using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.Azure.ServiceBus;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace IBBusinessAzure.Services
{
    /// <summary>
    /// Implementation class of IServiceBusConsumer
    /// </summary>
    public class ServiceBusConsumer: IServiceBusConsumer
    {  
        private readonly ISubscriptionClient _subscriptionClient;
        private const string Topic_Name = "mytopic";
        private const string Subcription_Name = "mysubcription";
        private readonly ILogger _logger;

        public ServiceBusConsumer(IConfiguration configuration,ILogger<ServiceBusConsumer> logger)
        {               
            _logger = logger;
            _subscriptionClient = new SubscriptionClient(configuration.GetConnectionString("ServiceBusConnectionString").ToString(), Topic_Name, Subcription_Name);
        }

        /// <summary>
        /// To recieve topics
        /// </summary>
        public void RegisterOnMessageHandlerAndReceiveMessages()
        {
            var messageHandlerOptions = new MessageHandlerOptions(ExceptionReceivedHandler)
            {
                MaxConcurrentCalls = 1,
                AutoComplete = false
            };

            _subscriptionClient.RegisterMessageHandler(ProcessMessagesAsync, messageHandlerOptions);            
        }

        /// <summary>
        /// Processiong the received topics
        /// </summary>
        /// <param name="message"></param>
        /// <param name="token"></param>
        /// <returns></returns>
        private async Task ProcessMessagesAsync(Message message, CancellationToken token)
        {
            Console.WriteLine($"Received message: SequenceNumber:{message.SystemProperties.SequenceNumber} Body:{Encoding.UTF8.GetString(message.Body)}");

            var myPayload = JsonConvert.DeserializeObject<Payload>(Encoding.UTF8.GetString(message.Body));
            //await _processData.Process(myPayload);
            await _subscriptionClient.CompleteAsync(message.SystemProperties.LockToken);
        }

        /// <summary>
        /// Handeling Exception
        /// </summary>
        /// <param name="exceptionReceivedEventArgs"></param>
        /// <returns></returns>
        private Task ExceptionReceivedHandler(ExceptionReceivedEventArgs exceptionReceivedEventArgs)
        {
            _logger.LogError(exceptionReceivedEventArgs.Exception, "Message handler encountered an exception");
            var context = exceptionReceivedEventArgs.ExceptionReceivedContext;

            _logger.LogDebug($"- Endpoint: {context.Endpoint}");
            _logger.LogDebug($"- Entity Path: {context.EntityPath}");
            _logger.LogDebug($"- Executing Action: {context.Action}");

            return Task.CompletedTask;
        }

        /// <summary>
        /// Closing topic 
        /// </summary>
        /// <returns></returns>
        public async Task CloseTopicAsync()
        {
            await _subscriptionClient.CloseAsync();
        }
    }
}

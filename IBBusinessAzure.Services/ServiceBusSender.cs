using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.Azure.ServiceBus;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessAzure.Services
{
    /// <summary>
    /// Implemtaion class for Azure Service Bus sender
    /// </summary>
    public class ServiceBusSender:IServiceBusSender
    {
        private readonly TopicClient _topicClient;        
        private const string TOPIC_PATH = "mytopic";
        private readonly ILogger _logger;

        public ServiceBusSender(IConfiguration configuration, ILogger<ServiceBusSender> logger)
        {            
            _logger = logger;
            _topicClient = new TopicClient(
                configuration.GetConnectionString("ServiceBusConnectionString"),
                TOPIC_PATH
            );
        }

        /// <summary>
        /// Send Message
        /// </summary>
        /// <param name="payload">MyPayload</param>
        /// <returns></returns>
        public async Task SendMessage(Payload payload)
        {
            string data = JsonConvert.SerializeObject(payload);
            Message message = new Message(Encoding.UTF8.GetBytes(data));
            message.UserProperties.Add("goals", payload.Goals);

            try
            {
                await _topicClient.SendAsync(message);
            }
            catch (Exception e)
            {
                _logger.LogError(e.Message);
            }
        }
    }
}

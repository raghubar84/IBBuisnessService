using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface class for Azure Service Bus Consumer
    /// </summary>
    public interface IServiceBusConsumer
    {
        /// <summary>
        /// ReceiveMessages
        /// </summary>        
        void RegisterOnMessageHandlerAndReceiveMessages();

        /// <summary>
        /// Closing ReceiveMessages
        /// </summary>
        Task CloseTopicAsync();
    }
}

using IBBusinessService.Domain.Models;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface class for Azure Service Bus sender
    /// </summary>
    public interface IServiceBusSender
    {
        /// <summary>
        /// Send Message
        /// </summary>
        /// <param name="payload">MyPayload</param>
        /// <returns></returns>
        Task SendMessage(Payload payload);
    }
}

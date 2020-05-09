using IBBusinessService.Domain.Models;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface class for user service
    /// </summary>
    public interface IUserService
    {
        /// <summary>
        /// To get user details
        /// </summary>
        /// <param name="UserName">UserName</param>
        /// <returns>User Details</returns>
        Task<UserMaster> FindUserByName(string UserName);
    }
}

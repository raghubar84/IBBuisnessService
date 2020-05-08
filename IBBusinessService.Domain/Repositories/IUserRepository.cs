using IBBusinessService.Domain.Models;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Repositories
{
    /// <summary>
    /// Interface for UserRepository
    /// </summary>
    public interface IUserRepository : IRepositoryBase<UserMaster>
    {
        /// <summary>
        /// To get user details
        /// </summary>
        /// <param name="UserName">UserName</param>
        /// <returns>User Details</returns>
        Task<UserMaster> FindByName(string UserName);
    }
}

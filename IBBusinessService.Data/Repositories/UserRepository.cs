using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Repositories;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace IBBusinessService.Data.Repositories
{
    /// <summary>
    /// Implementaion class for course repository
    /// </summary>
    public class UserRepository : RepositoryBase<UserMaster>, IUserRepository
    {
        public UserRepository(IBBusinessContext dbContext)
            : base(dbContext)
        {
        }

        /// <summary>
        /// To get user details
        /// </summary>
        /// <param name="UserName">UserName</param>
        /// <returns>User Details</returns>
        public async Task<UserMaster> FindByName(string UserName)
        {
            return await FindByCondition(u => u.UserName.Equals(UserName)).FirstOrDefaultAsync();
        }
    }
}
 
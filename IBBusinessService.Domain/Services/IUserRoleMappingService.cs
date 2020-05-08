using IBBusinessService.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface class for userrolemapping service
    /// </summary>
    public interface IUserRoleMappingService
    {
        /// <summary>
        /// To get list of access
        /// </summary>
        /// <param name="UserId">UserId</param>
        /// <returns>list of access</returns>
        Task<IEnumerable<UserRoleMapping>> FindAllAccess(int UserId);
    }
}

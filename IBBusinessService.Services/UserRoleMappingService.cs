using IBBusinessService.Domain;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    /// <summary>
    /// Implemtaion of UserRoleMappingService class
    /// </summary>
    public class UserRoleMappingService : IUserRoleMappingService
    {
        private readonly IUnitOfWork _unitOfWork;
        public UserRoleMappingService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        /// <summary>
        /// To get all UserRoleMapping list
        /// </summary>
        /// <returns>list of User Role</returns>
        public async Task<IEnumerable<UserRoleMapping>> FindAllAccess(int UserId)
        {
            return await _unitOfWork.UserRoleMappingRepository.FindByCondition(u => u.UserId.Equals(UserId)).ToListAsync();
        }
    }
}

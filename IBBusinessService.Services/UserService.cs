using IBBusinessService.Domain;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    /// <summary>
    /// Implementaion class for user service
    /// </summary>
    public class UserService : IUserService
    {
        private readonly IUnitOfWork _unitOfWork;
        public UserService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        /// <summary>
        /// To get user details
        /// </summary>
        /// <param name="UserName">UserName</param>
        /// <returns>User Details</returns>
        public async Task<UserMaster> FindUserByName(string UserName)
        {
            return await _unitOfWork.UserRepository.FindByName(UserName);
        }
    }
}

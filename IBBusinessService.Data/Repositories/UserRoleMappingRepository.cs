using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Repositories;

namespace IBBusinessService.Data.Repositories
{
    public class UserRoleMappingRepository : RepositoryBase<UserRoleMapping>, IUserRoleMappingRepository
    {
        public UserRoleMappingRepository(IBBusinessContext dbContext)
            : base(dbContext)
        {
        }
    }
}

using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Text;

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

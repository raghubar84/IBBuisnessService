using System.Threading.Tasks;
using IBBusinessService.Data.Repositories;
using IBBusinessService.Domain;
using IBBusinessService.Domain.Repositories;

namespace IBBusinessService.Data
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly IBBusinessContext _dbContext;
        private ICourseRepository _courseRepository;
        private IProgramRepository _programRepository;
        private IUserRepository _userRepository;
        private IUserRoleMappingRepository _userRoleMappingRepository;

        public ICourseRepository CourseRepository
        {
            get
            {
                if (_courseRepository == null)
                {
                    _courseRepository = new CourseRepository(_dbContext);
                }

                return _courseRepository;
            }
        }

        public IProgramRepository ProgramRepository
        {
            get
            {
                if (_programRepository == null)
                {
                    _programRepository = new ProgramRepository(_dbContext);
                }

                return _programRepository;
            }
        }

        public IUserRepository UserRepository
        {
            get
            {
                if (_userRepository == null)
                {
                    _userRepository = new UserRepository(_dbContext);
                }

                return _userRepository;
            }
        }

        public IUserRoleMappingRepository UserRoleMappingRepository
        {
            get
            {
                if (_userRoleMappingRepository == null)
                {
                    _userRoleMappingRepository = new UserRoleMappingRepository(_dbContext);
                }

                return _userRoleMappingRepository;
            }
        }

        public UnitOfWork(IBBusinessContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task Save()
        {
            await _dbContext.SaveChangesAsync();
        }
    }
}

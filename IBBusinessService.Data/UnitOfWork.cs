using System.Threading.Tasks;
using IBBusinessService.Data.Repositories;
using IBBusinessService.Domain;
using IBBusinessService.Domain.Repositories;

namespace IBBusinessService.Data
{
    public class UnitOfWork : IUnitOfWork
    {
        private IBBusinessContext _dbContext;
        private ICourseRepository _courseRepository;
        private IProgramRepository _programRepository;

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

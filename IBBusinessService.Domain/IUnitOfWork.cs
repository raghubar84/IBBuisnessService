using IBBusinessService.Domain.Repositories;
using System.Threading.Tasks;

namespace IBBusinessService.Domain
{
    public interface IUnitOfWork
    {
        ICourseRepository CourseRepository { get; }
        IProgramRepository ProgramRepository { get; }
        Task Save();
    }
}

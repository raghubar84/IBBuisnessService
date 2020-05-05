using IBBusinessService.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    public interface ICourseService
    {
        Task<List<Course>> GetAll();
        Task<Course> GetDetails(int id);
        Task<Course> Post(Course entity);
        Task<Course> Put(int id, Course entity);
        Task<bool> Delete(int id);
    }
}

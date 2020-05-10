using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Repositories;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Data.Repositories
{
    /// <summary>
    /// Implementaion class for course repository
    /// </summary>
    public class CourseRepository : RepositoryBase<Course>, ICourseRepository
    {
        public CourseRepository(IBBusinessContext dbContext)
            : base(dbContext)
        {
        }

        /// <summary>
        /// To get all course list
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<Course>> GetAllCourses()
        {
            return await FindAll().Include(p => p.Program).ToListAsync();
        }

        /// <summary>
        /// To get course details
        /// </summary>
        /// <param name="id">needs to pass course id</param>
        /// <returns>Course Details </returns>
        public async Task<Course> GetCourseById(int id)
        {
            return await FindByCondition(c => c.CourseId.Equals(id)).FirstOrDefaultAsync();
        }

        /// <summary>
        /// To save course
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        public void CreateCourse(Course entity)
        {
            Create(entity);
        }

        /// <summary>
        /// To update course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        public void UpdateCourse(Course entity)
        {
            Update(entity);
        }

        /// <summary>
        /// To delete course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        public void DeleteCourse(Course entity)
        {
            Delete(entity);
        }
    }
}

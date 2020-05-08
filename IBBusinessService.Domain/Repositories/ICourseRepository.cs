using IBBusinessService.Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Repositories
{
    /// <summary>
    /// Interface class for course repository
    /// </summary>
    public interface ICourseRepository : IRepositoryBase<Course>
    {
        /// <summary>
        /// To get all course list
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<Course>> GetAllCourses();

        /// <summary>
        /// To get course details
        /// </summary>
        /// <param name="id">needs to pass course id</param>
        /// <returns>Course Details </returns>
        Task<Course> GetCourseById(int id);     
        
        /// <summary>
        /// To save course
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        void CreateCourse(Course entity);

        /// <summary>
        /// To update course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        void UpdateCourse(Course entity);

        /// <summary>
        /// To delete course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        void DeleteCourse(Course entity);
    }
}

using IBBusinessService.Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface class for Course Service
    /// </summary>
    public interface ICourseService
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
        Task<Course> CreateCourse(Course entity);

        /// <summary>
        /// To update course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        Task<Course> UpdateCourse(int id, Course entity);

        /// <summary>
        /// To delete course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        Task<bool> DeleteCourse(int id);
    }
}

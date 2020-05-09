using IBBusinessService.Domain;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    /// <summary>
    /// Implementaion class for course service
    /// </summary>
    public class CourseService : ICourseService
    {
        private readonly IUnitOfWork _unitOfWork;
        public CourseService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        /// <summary>
        /// To get all course list
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<Course>> GetAllCourses()
        {
            return await _unitOfWork.CourseRepository.GetAllCourses();
        }

        /// <summary>
        /// To get course details
        /// </summary>
        /// <param name="id">needs to pass course id</param>
        /// <returns>Course Details </returns>
        public async Task<Course> GetCourseById(int id)
        {
            return await _unitOfWork.CourseRepository.GetCourseById(id);
        }

        /// <summary>
        /// To save course
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        public async Task<Course> CreateCourse(Course entity)
        {
            _unitOfWork.CourseRepository.CreateCourse(entity);
            await _unitOfWork.Save();
            return await GetCourseById(entity.CourseId);
        }

        /// <summary>
        /// To update course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        public async Task<Course> UpdateCourse(int id, Course entity)
        {
            _unitOfWork.CourseRepository.UpdateCourse(entity);
            await _unitOfWork.Save();
            return await GetCourseById(id);
        }

        /// <summary>
        /// To delete course data
        /// </summary>
        /// <param name="entity">Excpect course data</param>
        public async Task<bool> DeleteCourse(int id)
        {
            Course entity = await _unitOfWork.CourseRepository.GetCourseById(id);
            if (entity == null)
            {
                return false;
            }
            _unitOfWork.CourseRepository.DeleteCourse(entity);
            await _unitOfWork.Save();
            return true;
        }
    }
}

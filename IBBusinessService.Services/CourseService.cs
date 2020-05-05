using IBBusinessService.Data;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    public class CourseService : ICourseService
    {
        private UnitOfWork _unitOfWork = new UnitOfWork();
        public async Task<List<Course>> GetAll()
        {            
            return _unitOfWork.CourseRepository.Get().ToList();
        }

        public async Task<Course> GetDetails(int id)
        {
            return _unitOfWork.CourseRepository.GetByID(id);
        }

        public async Task<Course> Post(Course entity)
        {
            _unitOfWork.CourseRepository.Insert(entity);
            _unitOfWork.Save();
            return await GetDetails(entity.CourseId);
        }

        public async Task<Course> Put(int id, Course entity)
        {
            _unitOfWork.CourseRepository.Update(entity);
            _unitOfWork.Save();
            return await GetDetails(id);
        }

        public async Task<bool> Delete(int id)
        {
            Course entity = _unitOfWork.CourseRepository.GetByID(id);
            if (entity == null)
            {
                return false;
            }
            _unitOfWork.CourseRepository.Delete(id);
            _unitOfWork.Save();
            return true;
        }
    }
}

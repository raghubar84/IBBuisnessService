using System;
using System.Collections.Generic;
using System.Text;
using IBBusinessService.Data;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using System.Linq;
using System.Threading.Tasks;
using IBBusinessService.Data.Repositories;

namespace IBBusinessService.Services
{
    public class StudentService : IStudentService
    {
        private StudentRepository _studentRepository = new StudentRepository();
        public async Task<List<StudentViewModel>> GetAll()
        {
            return await _studentRepository.GetAll();
        }

        public async Task<StudentViewModel> GetDetails(int id)
        {
            return await _studentRepository.GetDetails(id);
        }
    }
}

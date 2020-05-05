using IBBusinessService.Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Data.Repositories
{
    public class StudentRepository
    {
        private IBBusinessContext _dbContext = new IBBusinessContext();
        public async Task<List<StudentViewModel>> GetAll()
        {
            var data = from student in _dbContext.Student
                       join school in _dbContext.School
                       on student.SchoolId equals school.SchoolId
                       select new StudentViewModel
                       {
                            StudentId = student.StudentId,
                            StudentCode = student.StudentCode,
                            StudentFirstName = student.StudentFirstName,
                            StudentLastName = student.StudentLastName,
                            Address = student.Address,
                            City =student.City,
                            State =student.State,
                            Country = student.Country,
                            Pin = student.Pin,
                            ContactNo = student.ContactNo,
                            EmailId = student.EmailId,
                            SchoolId = student.SchoolId,
                            SchoolName = school.SchoolName
                       };
            return await data.ToListAsync();
        }

        public async Task<StudentViewModel> GetDetails(int id)
        {
            var data = (from student in _dbContext.Student
                       join school in _dbContext.School
                       on student.SchoolId equals school.SchoolId
                       where student.StudentId == id
                       select new StudentViewModel
                       {
                           StudentId = student.StudentId,
                           StudentCode = student.StudentCode,
                           StudentFirstName = student.StudentFirstName,
                           StudentLastName = student.StudentLastName,
                           Address = student.Address,
                           City = student.City,
                           State = student.State,
                           Country = student.Country,
                           Pin = student.Pin,
                           ContactNo = student.ContactNo,
                           EmailId = student.EmailId,
                           SchoolId = student.SchoolId,
                           SchoolName = school.SchoolName
                       }).FirstOrDefaultAsync();
            return await data;
        }
    }
}

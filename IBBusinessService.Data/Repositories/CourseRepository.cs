using IBBusinessService.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Data.Repositories
{
    public class CourseRepository
    {
        //private IBBusinessContext _dbContext = new IBBusinessContext();
        private IBBusinessContext _dbContext;
        public CourseRepository(IBBusinessContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<IEnumerable<Course>> GetCourses()
        {
            return await _dbContext.Course.ToListAsync();
        }

        public void Add(Course entity)
        {
            _dbContext.Course.Add(entity);
        }

        public void Delete(Course entity)
        {
            _dbContext.Course.Remove(entity);
        }

        public void Save()
        {
            _dbContext.SaveChanges();
        }
    }
}

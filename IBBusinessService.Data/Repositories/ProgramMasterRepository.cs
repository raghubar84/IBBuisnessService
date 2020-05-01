using IBBusinessService.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Data.Repositories
{
    public class ProgramMasterRepository
    {
        //private IBBusinessContext _dbContext = new IBBusinessContext();
        private IBBusinessContext _dbContext;
        public ProgramMasterRepository(IBBusinessContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<List<ProgramMaster>> GetProgram()
        {
            return await _dbContext.ProgramMaster.ToListAsync();
        }


        public void Add(ProgramMaster entity)
        {
            _dbContext.ProgramMaster.Add(entity);
        }

        public void Delete(ProgramMaster entity)
        {
            _dbContext.ProgramMaster.Remove(entity);
        }

        public void Save()
        {
            _dbContext.SaveChanges();
        }
    }
}

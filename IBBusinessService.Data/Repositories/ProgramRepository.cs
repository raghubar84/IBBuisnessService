using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Repositories;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Data.Repositories
{
    /// <summary>
    /// Implementaion class for program repository
    /// </summary>
    public class ProgramRepository : RepositoryBase<ProgramMaster>, IProgramRepository
    {
        public ProgramRepository(IBBusinessContext dbContext)
           : base(dbContext)
        {
        }

        /// <summary>
        /// To get all program list
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<ProgramMaster>> GetAllProgram()
        {
            return await FindAll().ToListAsync();
        }

        /// <summary>
        /// To get program details
        /// </summary>
        /// <param name="id">needs to pass program id</param>
        /// <returns>program Details </returns>
        public async Task<ProgramMaster> GetProgramById(int id)
        {
            return await FindByCondition(p => p.ProgramId.Equals(id)).FirstOrDefaultAsync();
        }

        /// <summary>
        /// To save program
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        public void CreateProgram(ProgramMaster entity)
        {
            Create(entity);
        }

        /// <summary>
        /// To update program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        public void UpdateProgram(ProgramMaster entity)
        {
            Update(entity);
        }

        /// <summary>
        /// To delete program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        public void DeleteProgram(ProgramMaster entity)
        {
            Delete(entity);
        }
        
    }
}

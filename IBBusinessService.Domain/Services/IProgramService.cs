using IBBusinessService.Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface class for program Service
    /// </summary>
    public interface IProgramService
    {
        /// <summary>
        /// To get all program list
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<ProgramMaster>> GetAllProgram();

        /// <summary>
        /// To get program details
        /// </summary>
        /// <param name="id">needs to pass program id</param>
        /// <returns>program Details </returns>
        Task<ProgramMaster> GetProgramById(int id);

        /// <summary>
        /// To save program
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        Task<ProgramMaster> CreateProgram(ProgramMaster entity);

        /// <summary>
        /// To update program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        Task<ProgramMaster> UpdateProgram(int id, ProgramMaster entity);

        /// <summary>
        /// To delete program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        Task<bool> DeleteProgram(int id);
    }
}

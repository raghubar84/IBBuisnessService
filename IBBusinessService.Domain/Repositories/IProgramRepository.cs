using IBBusinessService.Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Repositories
{
    /// <summary>
    /// Interface class for program repository
    /// </summary>
    public interface IProgramRepository
    {
        /// <summary>
        /// To get all program list
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<ProgramMaster>> GetAllProgram();

        /// <summary>
        /// To get program details
        /// </summary>
        /// <param name="id">needs to pass course id</param>
        /// <returns>program Details </returns>
        Task<ProgramMaster> GetProgramById(int id);

        /// <summary>
        /// To save program
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        void CreateProgram(ProgramMaster entity);

        /// <summary>
        /// To update program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        void UpdateProgram(ProgramMaster entity);

        /// <summary>
        /// To delete program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        void DeleteProgram(ProgramMaster entity);
    }
}

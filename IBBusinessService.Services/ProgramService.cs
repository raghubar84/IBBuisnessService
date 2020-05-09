using IBBusinessService.Domain;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    /// <summary>
    /// Implementaion class for program service
    /// </summary>
    public class ProgramService : IProgramService
    {
        private readonly IUnitOfWork _unitOfWork;
        public ProgramService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        /// <summary>
        /// To get all program list
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<ProgramMaster>> GetAllProgram()
        {
            return await _unitOfWork.ProgramRepository.GetAllProgram();
        }

        // <summary>
        /// To get program details
        /// </summary>
        /// <param name="id">needs to pass program id</param>
        /// <returns>program Details </returns>
        public async Task<ProgramMaster> GetProgramById(int id)
        {
            return await _unitOfWork.ProgramRepository.GetProgramById(id);
        }

        /// <summary>
        /// To save program
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        public async Task<ProgramMaster> CreateProgram(ProgramMaster entity)
        {
            _unitOfWork.ProgramRepository.CreateProgram(entity);
            await _unitOfWork.Save();
            return await GetProgramById(entity.ProgramId);
        }

        /// <summary>
        /// To update program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        public async Task<ProgramMaster> UpdateProgram(int id, ProgramMaster entity)
        {
            _unitOfWork.ProgramRepository.UpdateProgram(entity);
            await _unitOfWork.Save();
            return await GetProgramById(id);
        }

        /// <summary>
        /// To delete program data
        /// </summary>
        /// <param name="entity">Excpect program data</param>
        public async Task<bool> DeleteProgram(int id)
        {
            ProgramMaster entity = await _unitOfWork.ProgramRepository.GetProgramById(id);
            if (entity == null)
            {
                return false;
            }
            _unitOfWork.ProgramRepository.DeleteProgram(entity);
            await _unitOfWork.Save();
            return true;
        }
    }
}

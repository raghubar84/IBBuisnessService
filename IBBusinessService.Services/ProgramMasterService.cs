using IBBusinessService.Data;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    public class ProgramMasterService: IProgramMasterService
    {
        private UnitOfWork _unitOfWork;
        public ProgramMasterService(IBBusinessContext context)
        {
            _unitOfWork = new UnitOfWork(context);
        }        

        public async Task<List<ProgramMaster>> GetAll()
        {
            return _unitOfWork.ProgramMasterRepository.Get().ToList();
        }

        public async Task<ProgramMaster> GetDetails(int id)
        {
            return _unitOfWork.ProgramMasterRepository.GetByID(id);
        }

        public async Task<ProgramMaster> Post(ProgramMaster entity)
        {
            _unitOfWork.ProgramMasterRepository.Insert(entity);
            _unitOfWork.Save();
            return await GetDetails(entity.ProgramId);
        }

        public async Task<ProgramMaster> Put(int id, ProgramMaster entity)
        {
            _unitOfWork.ProgramMasterRepository.Update(entity);
            _unitOfWork.Save();
            return await GetDetails(id);
        }

        public async Task<bool> Delete(int id)
        {
            ProgramMaster entity = _unitOfWork.ProgramMasterRepository.GetByID(id);
            if (entity == null)
            {
                return false;
            }
            _unitOfWork.ProgramMasterRepository.Delete(id);
            _unitOfWork.Save();
            return true;
        }
    }
}

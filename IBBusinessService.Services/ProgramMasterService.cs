using IBBusinessService.Data;
using IBBusinessService.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IBBusinessService.Services
{
    public class ProgramMasterService
    {
        private UnitOfWork _unitOfWork;
        public ProgramMasterService(IBBusinessContext context)
        {
            _unitOfWork = new UnitOfWork(context);
        }       

        public async Task<List<ProgramMaster>> GetProgram()
        {
            return _unitOfWork.ProgramMasterRepository.Get().ToList();
        }
    }
}

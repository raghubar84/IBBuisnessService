using IBBusinessService.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    public interface IProgramMasterService
    {        
        Task<List<ProgramMaster>> GetAll();
        Task<ProgramMaster> GetDetails(int id);
        Task<ProgramMaster> Post(ProgramMaster entity);
        Task<ProgramMaster> Put(int id, ProgramMaster entity);
        Task<bool> Delete(int id);
    }
}

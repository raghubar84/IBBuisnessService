using IBBusinessService.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    public interface IProgramGroupService
    {
        Task<List<ProgramGroup>> GetAll();
    }
}

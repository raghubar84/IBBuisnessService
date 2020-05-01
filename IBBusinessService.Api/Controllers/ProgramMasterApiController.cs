using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using IBBusinessService.Data;
using IBBusinessService.Data.Models;
using IBBusinessService.Data.Repositories;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using IBBusinessService.Services;

namespace IBBusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProgramMasterApiController : ControllerBase
    {
        //private readonly IBBusinessContext _context;
        //private UnitOfWork _unitOfWork;
        //public ProgramMasterApiController(IBBusinessContext context)
        //{
        //    //_context = context;
        //    _unitOfWork = new UnitOfWork(context);
        //}   

        private ProgramMasterService _programMasterService;
        public ProgramMasterApiController(IBBusinessContext context)
        {
            _programMasterService = new ProgramMasterService(context);
        }

        // GET: api/ProgramMasterApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ProgramMaster>>> Get()
        {
            return await _programMasterService.GetProgram();
        }

        // GET: api/ProgramMasterApi/5
        [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/ProgramMasterApi
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/ProgramMasterApi/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}

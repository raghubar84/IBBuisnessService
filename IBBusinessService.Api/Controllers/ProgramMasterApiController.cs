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

        private ProgramMasterService _programMasterService;
        public ProgramMasterApiController(IBBusinessContext context)
        {
            _programMasterService = new ProgramMasterService(context);
        }

        // GET: api/ProgramMasterApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ProgramMaster>>> Get()
        {
            return await _programMasterService.GetAll();
        }

        // GET: api/ProgramMasterApi/5
        [HttpGet("{id}", Name = "Get")]        
        public async Task<ActionResult<ProgramMaster>> Get(int id)
        {
            return await _programMasterService.GetDetails(id);
        }

        // POST: api/ProgramMasterApi
        [HttpPost]        
        public async Task<ActionResult<ProgramMaster>> Post([FromBody]ProgramMaster program)
        {
            return await _programMasterService.Post(program);
        }

        // PUT: api/ProgramMasterApi/5
        [HttpPut("{id}")]
        public async Task<ActionResult<ProgramMaster>> Put(int id, [FromBody] ProgramMaster program)
        {
            if (id != program.ProgramId)
            {
                return BadRequest();
            }
            return await _programMasterService.Put(id, program);
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public async Task<bool> Delete(int id)
        {
            return await _programMasterService.Delete(id);
        }
    }
}

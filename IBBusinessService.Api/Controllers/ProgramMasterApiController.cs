using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using IBBusinessService.Data;
using IBBusinessService.Data.Repositories;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using IBBusinessService.Services;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using IBBusinessService.Api.Filters;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Controllers
{
    [CustomAuthorization]
    [Route("api/[controller]")]
    [ApiController]
    public class ProgramMasterApiController : ControllerBase
    {
        private readonly ILogger<ProgramMasterApiController> _logger;
        private IProgramMasterService _programMasterService;
        public ProgramMasterApiController(IBBusinessContext context, ILogger<ProgramMasterApiController> logger)
        {
            _programMasterService = new ProgramMasterService(context);
            _logger = logger;
        }


        // GET: api/ProgramMasterApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ProgramMaster>>> Get()
        {
            _logger.LogInformation($"ProgramMasterApi GetAll Method entered.");
            List<ProgramMaster> listProgramMasters = new List<ProgramMaster>();
            try
            {
                listProgramMasters = await _programMasterService.GetAll();
            }
            catch(Exception ex)
            {
                _logger.LogError(ex, ex.Message);
            }
            _logger.LogInformation($"ProgramMasterApi GetAll Method exit.");
            return listProgramMasters;
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

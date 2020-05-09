using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using IBBusinessService.Api.Filters;
using Microsoft.Extensions.Logging;
using AutoMapper;
using System.Collections.Generic;
using IBBusinessService.Api.Mapping;
using IBBusinessService.Api.Resources;

namespace IBBusinessService.Api.Controllers
{
    [CustomAuthorization]
    [Route("api/v1/[controller]")]
    [ApiController]
    public class ProgramApiController : ControllerBase
    {
        private readonly ILogger<ProgramApiController> _logger;
        private readonly IProgramService _programService;
        private readonly IMapper _mapper;
        public ProgramApiController(IProgramService programService, ILogger<ProgramApiController> logger, IMapper mapper)
        {
            _programService = programService;
            _logger = logger;
            _mapper = mapper;
        }


        /// <summary>
        /// To get program list
        /// </summary>
        /// <returns>list of programs</returns>
        // GET: api/ProgramApi
        [HttpGet]
        public async Task<ActionResult> Get()
        {
            _logger.LogInformation(ConstantVarriables.CourseApiGetAllEnterMessage);
            ObjectResult response;
            try
            {
                var data = await _programService.GetAllProgram();
                var dataResult = _mapper.Map<IEnumerable<ProgramDto>>(data);
                response = Ok(dataResult);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }
            _logger.LogInformation(ConstantVarriables.CourseApiGetAllExitMessage);
            return response;
        }

        /// <summary>
        /// To get program details
        /// </summary>
        /// <param name="id">ProgramId</param>
        /// <returns>Prgram Details</returns>
        // GET: api/ProgramApi/5
        [HttpGet("{id}", Name = "Get")]
        public async Task<ActionResult> GetProgram(int id)
        {
            _logger.LogInformation(ConstantVarriables.ProgramApiGetProgramEnterMessage);
            ObjectResult response;
            try
            {
                var data = await _programService.GetProgramById(id);
                var dataResult = _mapper.Map<ProgramDto>(data);
                response = Ok(dataResult);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }
            _logger.LogInformation(ConstantVarriables.ProgramApiGetProgramExitMessage);
            return response;
        }

        /// <summary>
        /// To create program
        /// </summary>
        /// <param name="program">program data</param>
        /// <returns>http response</returns>
        // POST: api/ProgramApi
        [HttpPost]
        public async Task<ActionResult> Post([FromBody]ProgramCreationDto program)
        {
            _logger.LogInformation(ConstantVarriables.ProgramApiPostProgramEnterMessage);
            ObjectResult response;
            try
            {
                var programEntity = _mapper.Map<ProgramMaster>(program);
                await _programService.CreateProgram(programEntity);
                response = Ok(ConstantVarriables.DataSaved);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }

            _logger.LogInformation(ConstantVarriables.ProgramApiPostProgramExitMessage);
            return response;
        }

        /// <summary>
        /// To update program
        /// </summary>
        /// <param name="id">ProgramId</param>
        /// <param name="program">program data</param>
        /// <returns>http response</returns>
        // PUT: api/ProgramApi/5
        [HttpPut("{id}")]
        public async Task<ActionResult> Put(int id, [FromBody] ProgramUpdateDto program)
        {
            _logger.LogInformation(ConstantVarriables.ProgramApiPutProgramEnterMessage);
            ObjectResult response;
            if (id != program.ProgramId)
                response = BadRequest(ConstantVarriables.NoValidData);
            else
            {
                try
                {
                    var programEntity = _mapper.Map<ProgramMaster>(program);
                    await _programService.UpdateProgram(id, programEntity);
                    response = Ok(ConstantVarriables.DataUpdated);
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, ex.Message);
                    response = BadRequest(ConstantVarriables.GenericExeptionMessage);
                }
            }
            _logger.LogInformation(ConstantVarriables.ProgramApiPutProgramExitMessage);
            return response;
        }

        /// <summary>
        /// To delete program
        /// </summary>
        /// <param name="id">ProgramId</param>
        /// <returns>http response</returns>
        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public async Task<ActionResult> Delete(int id)
        {
            _logger.LogInformation(ConstantVarriables.ProgramApiDeleteProgramEnterMessage);
            ObjectResult response;
            try
            {
                var status = await _programService.DeleteProgram(id);
                if (status)
                    response = Ok(ConstantVarriables.DataDeleted);
                else
                    response = NotFound(ConstantVarriables.ProgramNotFound);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }

            _logger.LogInformation(ConstantVarriables.ProgramApiDeleteProgramExitMessage);
            return response;
        }
    }
}

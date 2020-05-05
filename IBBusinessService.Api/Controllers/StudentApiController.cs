using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentApiController : ControllerBase
    {
        private readonly IStudentService _studentService;
        private readonly ILogger<StudentApiController> _logger;

        public StudentApiController(IStudentService studentService, ILogger<StudentApiController> logger)
        {
            _studentService = studentService;
            _logger = logger;
        }

        // GET: api/StudentApi
        [HttpGet]
        public async Task<ActionResult> GetStudent()
        {
            _logger.LogInformation("StudentApi GetAll Method enter.");
            ObjectResult response;
            try
            {
                var data = await _studentService.GetAll();
                response = Ok(data);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest("An error occured while processing request.");
            }
            _logger.LogInformation("StudentApi GetAll Method exit.");
            return response;
        }

        // GET: api/CoursesApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult> GetCourse(int id)
        {
            _logger.LogInformation("StudentApi GetCourse Method enter.");
            ObjectResult response;
            try
            {
                var data = await _studentService.GetDetails(id);
                response = Ok(data);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest("An error occured while processing request.");
            }
            _logger.LogInformation("StudentApi GetCourse Method exit.");
            return response;
        }
    }
}
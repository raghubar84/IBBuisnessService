using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using IBBusinessService.Data;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using IBBusinessService.Api.Resources;

namespace IBBusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CoursesApiController : ControllerBase
    {
        private readonly ICourseService _courseService;
        private readonly ILogger<CoursesApiController> _logger;

        public CoursesApiController(ICourseService courseService, ILogger<CoursesApiController> logger)
        {
            _courseService = courseService;
            _logger = logger;
        }

        // GET: api/CoursesApi
        [HttpGet]
        public async Task<ActionResult> GetCourse()
        {
            _logger.LogInformation("CoursesApi GetAll Method enter.");
            ObjectResult response;
            try
            {                 
                var data = await _courseService.GetAll();
                response = Ok(data);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest("An error occured while processing request.");
            }
            _logger.LogInformation("CoursesApi GetAll Method exit.");
            return response;
        }

        // GET: api/CoursesApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult> GetCourse(int id)
        {
            _logger.LogInformation("CoursesApi GetCourse Method enter.");
            ObjectResult response;
            try
            {
                var data = await _courseService.GetDetails(id);
                response = Ok(data);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest("An error occured while processing request.");
            }
            _logger.LogInformation("CoursesApi GetCourse Method exit.");
            return response;
        }

        // PUT: api/CoursesApi/5        
        [HttpPut("{id}")]
        public async Task<ActionResult> PutCourse(int id, Course course)
        {
            _logger.LogInformation("CoursesApi PutCourse Method enter.");
            ObjectResult response;
            if (id != course.CourseId)
                response = BadRequest("Not valid data.");
            else
            {
                try
                {
                    await _courseService.Put(id, course);
                    response = Ok("Data updated successfuly.");
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, ex.Message);
                    response = BadRequest("An error occured while processing request.");
                }
            }
            _logger.LogInformation("CoursesApi PutCourse Method exit.");
            return response;            
        }

        // POST: api/CoursesApi        
        [HttpPost]
        public async Task<ActionResult> PostCourse(Course course)
        {
            _logger.LogInformation("CoursesApi PostCourse Method enter.");
            ObjectResult response;
            if (course == null)
                response = BadRequest("Model is empty.");
            else
            {
                try
                {
                    await _courseService.Post(course);
                    response = Ok("Data inserted successfuly.");
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, ex.Message);
                    response = BadRequest("An error occured while processing request.");
                }
            }
            _logger.LogInformation("CoursesApi PostCourse Method exit.");
            return response;            
        }

        // DELETE: api/CoursesApi/5
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteCourse(int id)
        {
            _logger.LogInformation("CoursesApi DeleteCourse Method enter.");
            ObjectResult response;           
            try
            {
                var status = await _courseService.Delete(id);
                if (status == true)
                    response = NotFound("Course not found.");
                else
                    response = Ok("Data deleted successfuly.");

            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest("An error occured while processing request.");
            }
            
            _logger.LogInformation("CoursesApi DeleteCourse Method exit.");
            return response;            
        }
       
    }
}

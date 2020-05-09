using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using IBBusinessService.Api.Filters;
using IBBusinessService.Api.Mapping;
using IBBusinessService.Api.Resources;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Distributed;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace IBBusinessService.Api.Controllers
{
    [CustomAuthorization]
    [Route("api/v1/[controller]")]
    [ApiController]
    public class CourseApiController : ControllerBase
    {
        private readonly ICourseService _courseService;
        private readonly ILogger<CourseApiController> _logger;
        private readonly IMapper _mapper;
        private readonly IDistributedCache _cache;

        public CourseApiController(ICourseService courseService, ILogger<CourseApiController> logger,
            IMapper mapper, IDistributedCache cache)
        {
            _courseService = courseService;
            _logger = logger;
            _mapper = mapper;
            _cache = cache;
        }

        /// <summary>
        /// To get all course list
        /// </summary>
        /// <returns>list of course</returns>
        // GET: api/CoursesApi
        [HttpGet]
        public async Task<ActionResult> GetCourse()
        {
            _logger.LogInformation(ConstantVarriables.CourseApiGetAllEnterMessage);
            ObjectResult response;
            try
            {
                List<CourseDto> listCourse = new List<CourseDto>();
                //Get data from redis cache
                var cachedObj = _cache.GetString("CourseCookies");
                if (string.IsNullOrEmpty(cachedObj))
                {
                    var data = await _courseService.GetAllCourses();
                    listCourse = _mapper.Map<List<CourseDto>>(data);
                    //Set data to redis cache
                    var options = new DistributedCacheEntryOptions();
                    options.SetAbsoluteExpiration(DateTimeOffset.Now.AddMinutes(1));
                    _cache.SetString("CourseCookies", JsonConvert.SerializeObject(listCourse), options);
                }
                else
                {
                    listCourse = JsonConvert.DeserializeObject<List<CourseDto>>(cachedObj);
                }
                
                response = Ok(listCourse);
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
        /// To get course details
        /// </summary>
        /// <param name="id">CourseId</param>
        /// <returns>http response</returns>
        // GET: api/CoursesApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult> GetCourse(int id)
        {
            _logger.LogInformation(ConstantVarriables.CourseApiGetCourseEnterMessage);
            ObjectResult response;
            try
            {
                var data = await _courseService.GetCourseById(id);
                var dataResult = _mapper.Map<CourseDto>(data);
                response = Ok(dataResult);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }
            _logger.LogInformation(ConstantVarriables.CourseApiGetCourseExitMessage);
            return response;
        }

        /// <summary>
        /// To update course data
        /// </summary>
        /// <param name="id">CourseId</param>
        /// <param name="course">course data</param>
        /// <returns>http response</returns>
        // PUT: api/CoursesApi/5        
        [HttpPut("{id}")]
        public async Task<ActionResult> PutCourse(int id, [FromBody] CourseUpdateDto course)
        {
            _logger.LogInformation(ConstantVarriables.CourseApiPutCourseEnterMessage);
            ObjectResult response;
            if (id != course.CourseId)
                response = BadRequest(ConstantVarriables.NoValidData);
            else
            {
                try
                {
                    var courseEntity = _mapper.Map<Course>(course);
                    await _courseService.UpdateCourse(id, courseEntity);
                    response = Ok(ConstantVarriables.DataUpdated);
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, ex.Message);
                    response = BadRequest(ConstantVarriables.GenericExeptionMessage);
                }
            }
            _logger.LogInformation(ConstantVarriables.CourseApiPutCourseExitMessage);
            return response;
        }

        /// <summary>
        /// To create course
        /// </summary>
        /// <param name="course">course data</param>
        /// <returns>http response</returns>
        // POST: api/CoursesApi        
        [HttpPost]
        public async Task<ActionResult> PostCourse([FromBody]CourseCreationDto course)
        {
            _logger.LogInformation(ConstantVarriables.CourseApiPostCourseEnterMessage);
            ObjectResult response;
            if (course == null)
                response = BadRequest(ConstantVarriables.ModelEmpty);
            else
            {
                try
                {
                    var courseEntity = _mapper.Map<Course>(course);
                    await _courseService.CreateCourse(courseEntity);
                    response = Ok(ConstantVarriables.DataSaved);
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, ex.Message);
                    response = BadRequest(ConstantVarriables.GenericExeptionMessage);
                }
            }
            _logger.LogInformation(ConstantVarriables.CourseApiPostCourseExitMessage);
            return response;
        }

        /// <summary>
        /// To delete course
        /// </summary>
        /// <param name="id">CourseId</param>
        /// <returns>http response</returns>
        // DELETE: api/CoursesApi/5
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteCourse(int id)
        {
            _logger.LogInformation(ConstantVarriables.CourseApiDeleteCourseEnterMessage);
            ObjectResult response;
            try
            {
                var status = await _courseService.DeleteCourse(id);
                if (status)
                    response = Ok(ConstantVarriables.DataDeleted);
                else
                    response = NotFound(ConstantVarriables.CourseNotFound);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }

            _logger.LogInformation(ConstantVarriables.CourseApiDeleteCourseExitMessage);
            return response;
        }

    }
}

using AutoMapper;
using IBBusinessService.Api.Controllers.v1;
using IBBusinessService.Api.Mapping;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Distributed;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using NUnit.Framework;
using System.Threading.Tasks;

namespace IBBusinessService.Api.Test
{
    public class CourseControllerUnitTest
    {
        private CourseApiController _courseApiController;

        [SetUp]
        public void Setup()
        {
            var webHost = Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>().Build();
            var serv = webHost.Services.GetRequiredService<ICourseService>();
            var logger = webHost.Services.GetRequiredService<ILogger<CourseApiController>>();
            var mapper = webHost.Services.GetRequiredService<IMapper>();
            var cache = webHost.Services.GetRequiredService<IDistributedCache>();
            _courseApiController = new CourseApiController(serv, logger, mapper, cache);
        }

        [Test]
        public async Task Course_GetAll_Test()
        {
            var results = await _courseApiController.GetCourse();
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Course_GetById_Test()
        {
            int CourseId = 1;
            var results = await _courseApiController.GetCourse(CourseId);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Course_Post_Test()
        {
            CourseCreationDto course = new CourseCreationDto()
            {
                CourseName = "Test Course",
                ProgramId = 1
            };
            var results = await _courseApiController.PostCourse(course);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Course_Put_Test()
        {
            CourseUpdateDto course = new CourseUpdateDto()
            {
                CourseId = 4,
                CourseName = "Test Course Update",
                ProgramId = 1
            };
            var results = await _courseApiController.PutCourse(course.CourseId, course);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Course_Delete_Test()
        {
            int CourseId = 4;
            var results = await _courseApiController.DeleteCourse(CourseId);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }
    }
}

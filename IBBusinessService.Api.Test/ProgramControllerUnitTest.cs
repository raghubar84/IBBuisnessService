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
    public class Tests
    {
        private ProgramApiController _programApiController;

        [SetUp]
        public void Setup()
        {
            var webHost = Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>().Build();
            var serv = webHost.Services.GetRequiredService<IProgramService>();
            var logger = webHost.Services.GetRequiredService<ILogger<ProgramApiController>>();
            var mapper = webHost.Services.GetRequiredService<IMapper>();
            var cache = webHost.Services.GetRequiredService<IDistributedCache>();
            _programApiController = new ProgramApiController(serv, logger, mapper, cache);
        }

        [Test]
        public async Task Program_GetAll_Test()
        {
            var results = await _programApiController.Get();
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Program_GetById_Test()
        {
            int CourseId = 1;
            var results = await _programApiController.GetProgram(CourseId);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Program_Post_Test()
        {
            ProgramCreationDto program = new ProgramCreationDto()
            {
                ProgramName = "Test Program",
                ClassId = 1
            };
            var results = await _programApiController.Post(program);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Program_Put_Test()
        {
            ProgramUpdateDto program = new ProgramUpdateDto()
            {
                ProgramId = 7,
                ProgramName = "Test Program Update",
                ClassId = 1
            };
            var results = await _programApiController.Put(program.ProgramId, program);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }

        [Test]
        public async Task Program_Delete_Test()
        {
            int ProgramId = 6;
            var results = await _programApiController.Delete(ProgramId);
            var objectResult = results as ObjectResult;
            Assert.NotNull(results);
            Assert.NotNull(objectResult);
            Assert.AreEqual(200, objectResult.StatusCode);
        }
    }
}
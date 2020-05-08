using NUnit.Framework;
using IBBusinessService.Api.Controllers;
using IBBusinessService.Data;
using Microsoft.Extensions.Logging;
using Moq;
using IBBusinessService.Domain.Services;
using IBBusinessService.Services;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using IBBusinessService.Domain.Models;

namespace IBBusinessService.Api.Test
{
    public class ProgmarMasterUnitTest
    {       

        [SetUp]
        public void Setup()
        {
            
        }

        [Test]
        public void ProgramMaster_GetAll_Test()
        {
            //ProgramMasterService programMasterService = new ProgramMasterService();
            //var serviceProvider = new ServiceCollection().AddLogging().BuildServiceProvider();
            //var factory = serviceProvider.GetService<ILoggerFactory>();
            //var logger = factory.CreateLogger<ProgramMasterApiController>();
            
            //var controller = new ProgramMasterApiController(programMasterService, logger);
            //var data = controller.Get();
            //Assert.IsNotNull(data.Result.Value);
        }
    }
}
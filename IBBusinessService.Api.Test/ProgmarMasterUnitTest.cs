using NUnit.Framework;
using IBBusinessService.Api.Controllers;
using IBBusinessService.Data;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Test
{
    public class ProgmarMasterUnitTest
    {
        private IBBusinessContext _context = new IBBusinessContext();
        private readonly Logger<ProgramMasterApiController> _logger;
        //public ProgmarMasterUnitTest(IBBusinessContext context,ILogger<ProgramMasterApiController> logger)
        //{
        //    _context = context;
        //    _logger = logger;
        //}

        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void ProgramMaster_GetAll_Test()
        {
            ProgramMasterApiController programMasterApi = new ProgramMasterApiController(_context, _logger);
            var result = programMasterApi.Get();
            Assert.IsNotNull(result);
        }
    }
}
using NUnit.Framework;
using IBBusinessService.Api.Controllers;
using IBBusinessService.Data;

namespace IBBusinessService.Api.Test
{
    public class Tests
    {
        private IBBusinessContext context;
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void ProgramMaster_GetAll_Test()
        {
            ProgramMasterApiController programMasterApi = new ProgramMasterApiController(context);
            var result = programMasterApi.Get();
            Assert.IsNotNull(result);
        }
    }
}
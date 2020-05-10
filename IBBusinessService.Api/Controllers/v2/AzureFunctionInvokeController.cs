using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using IBBusinessService.Api.Resources;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Controllers.v2
{
    [Route("api/v2/[controller]")]
    [ApiExplorerSettings(GroupName = "v2")]
    [ApiController]
    public class AzureFunctionInvokeController : ControllerBase
    {
        private readonly ILogger<AzureFunctionInvokeController> _logger;
        private readonly IConfiguration _configuration;
        
        public AzureFunctionInvokeController(ILogger<AzureFunctionInvokeController> logger, IConfiguration configuration)
        {
            _logger = logger;
            _configuration = configuration;
        }

        [HttpGet]
        public async Task<IActionResult> GetFunctionValue(string name)
        {
            _logger.LogInformation(ConstantVarriables.AzureFuntionInvokeGetFunctionValueEnterMessage);
            ObjectResult response;
            try
            {
                AzureFunctionInvokeHelper helper = new AzureFunctionInvokeHelper(_configuration);
                string message = await helper.InvokeFunction(name);
                response = Ok(message);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }
            _logger.LogInformation(ConstantVarriables.AzureFuntionInvokeGetFunctionValueExitMessage);
            return response;
        }
    }

}
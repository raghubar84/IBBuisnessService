using System;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using IBBusinessService.Api.Mapping;
using IBBusinessService.Api.Resources;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Controllers.v2
{
    [Route("api/v2/[controller]")]
    [ApiExplorerSettings(GroupName = "v2")]
    [ApiController]
    public class AzureServiceBusApiController : ControllerBase
    {
        private readonly IServiceBusSender _serviceBusSender;
        private readonly ILogger<AzureServiceBusApiController> _logger;

        public AzureServiceBusApiController(IServiceBusSender serviceBusSender, ILogger<AzureServiceBusApiController> logger)
        {
            _serviceBusSender = serviceBusSender;
            _logger = logger;
        }

        /// <summary>
        /// Push topic to service bus
        /// </summary>
        /// <param name="request">PayloadDto</param>
        /// <returns>http response</returns>
        //// Post: api/v2/AzureServiceBusApi/Create
        [HttpPost]
        public async Task<IActionResult> Create([FromBody][Required] PayloadDto request)
        {
            _logger.LogInformation(ConstantVarriables.AzureServiceBusApiCreateEnterMessage);
            ObjectResult response;
            try
            {
                await _serviceBusSender.SendMessage(new Payload
                {
                    Goals = request.Goals,
                    Name = request.Name,
                    Delete = false
                });
                response = Ok(ConstantVarriables.TopicPushSuccessMessage + " TopicName:"+ request.Name);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }
            _logger.LogInformation(ConstantVarriables.AzureServiceBusApiCreateExitMessage);
            return response;            
        }
    }
}
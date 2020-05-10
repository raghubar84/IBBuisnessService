using System;
using System.IO;
using System.Threading.Tasks;
using IBBusinessService.Api.Resources;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Controllers.v2
{
    [Route("api/v2/[controller]")]
    [ApiExplorerSettings(GroupName = "v2")]
    [ApiController]
    public class FileHandlerApiController : ControllerBase
    {
        private readonly ILogger<FileHandlerApiController> _logger;
        private readonly IBlobStorageService _blobStorageService;
        public FileHandlerApiController(ILogger<FileHandlerApiController> logger, IBlobStorageService blobStorageService)
        {
            _logger = logger;
            _blobStorageService = blobStorageService;
        }

        /// <summary>
        /// Upload file to azure blob
        /// </summary>
        /// <param name="file">file</param>
        /// <returns>http response with file upload url</returns>
        //// Post: api/v2/FileHandlerApi/Upload
        [HttpPost]
        public async Task<IActionResult> Upload(IFormFile file)
        {
            _logger.LogInformation(ConstantVarriables.FileHandlerApiUploadEnterMessage);
            ObjectResult response;
            try
            {
                var fileName = Path.GetFileName(file.FileName);
                string mimeType = file.ContentType;
                byte[] fileData = new byte[file.Length];                

                string filePath = await _blobStorageService.UploadFileToBlobAsync(fileName, fileData, mimeType);
                response = Ok(ConstantVarriables.FileUploadMessage + filePath);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                response = BadRequest(ConstantVarriables.GenericExeptionMessage);
            }
            _logger.LogInformation(ConstantVarriables.FileHandlerApiUploadExitMessage);
            return response;
        }
    }
}
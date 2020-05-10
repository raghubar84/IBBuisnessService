using System;
using System.IO;
using System.Threading.Tasks;
using IBBusinessService.Api.Resources;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace IBBusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FileHandlerApiController : ControllerBase
    {
        private readonly ILogger<FileHandlerApiController> _logger;
        public FileHandlerApiController(ILogger<FileHandlerApiController> logger)
        {
            _logger = logger;
        }

        /// <summary>
        /// Upload file to azure blob
        /// </summary>
        /// <param name="file">file</param>
        /// <returns>http response with file upload url</returns>
        //// Post: api/FileHandlerApi/Upload
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
                BlobStorageService objBlobService = new BlobStorageService();

                string filePath = await objBlobService.UploadFileToBlobAsync(fileName, fileData, mimeType);
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
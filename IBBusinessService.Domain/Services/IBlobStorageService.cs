using System.Threading.Tasks;

namespace IBBusinessService.Domain.Services
{
    /// <summary>
    /// Interface Access Azure Blob Service to upload and dowload files
    /// </summary>
    public interface IBlobStorageService
    {
        /// <summary>
        /// Upload file synchronous
        /// </summary>
        /// <param name="strFileName"File Name</param>
        /// <param name="fileData">File in byte format</param>
        /// <param name="fileMimeType">Mime Type</param>
        /// <returns>Uploaded url of file</returns>
        string UploadFileToBlob(string strFileName, byte[] fileData, string fileMimeType);

        /// <summary>
        /// Delete file
        /// </summary>
        /// <param name="fileUrl">Url of file</param>
        void DeleteBlobData(string fileUrl);

        // <summary>
        /// Upload file asynchronous
        /// </summary>
        /// <param name="strFileName"File Name</param>
        /// <param name="fileData">File in byte format</param>
        /// <param name="fileMimeType">Mime Type</param>
        /// <returns>Uploaded url of file</returns>
        Task<string> UploadFileToBlobAsync(string strFileName, byte[] fileData, string fileMimeType);
    }
}

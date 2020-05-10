﻿using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using IBBusinessService.Domain.Services;

namespace IBBusinessAzure.Services
{
    /// <summary>
    /// Access Azure Blob Service to upload and dowload files
    /// </summary>
    public class BlobStorageService:IBlobStorageService
    {        
        private string accessKey;

        public BlobStorageService()
        {
            var builder = new ConfigurationBuilder().SetBasePath(System.IO.Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json");
            var configuration = builder.Build();
            this.accessKey = configuration.GetConnectionString("AzureStorageAccessKey");            
        }

        /// <summary>
        /// Upload file synchronous
        /// </summary>
        /// <param name="strFileName"File Name</param>
        /// <param name="fileData">File in byte format</param>
        /// <param name="fileMimeType">Mime Type</param>
        /// <returns>Uploaded url of file</returns>
        public string UploadFileToBlob(string strFileName, byte[] fileData, string fileMimeType)
        {
            try
            {
                var _task = Task.Run(() => this.UploadFileToBlobAsync(strFileName, fileData, fileMimeType));
                _task.Wait();
                string fileUrl = _task.Result;
                return fileUrl;
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }

        /// <summary>
        /// Delete file
        /// </summary>
        /// <param name="fileUrl">Url of file</param>
        public async void DeleteBlobData(string fileUrl)
        {
            Uri uriObj = new Uri(fileUrl);
            string BlobName = Path.GetFileName(uriObj.LocalPath);

            CloudStorageAccount cloudStorageAccount = CloudStorageAccount.Parse(accessKey);
            CloudBlobClient cloudBlobClient = cloudStorageAccount.CreateCloudBlobClient();
            string strContainerName = "uploads";
            CloudBlobContainer cloudBlobContainer = cloudBlobClient.GetContainerReference(strContainerName);

            string pathPrefix = DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") + "/";
            CloudBlobDirectory blobDirectory = cloudBlobContainer.GetDirectoryReference(pathPrefix);
            // get block blob refarence  
            CloudBlockBlob blockBlob = blobDirectory.GetBlockBlobReference(BlobName);

            // delete blob from container      
            await blockBlob.DeleteAsync();
        }

        /// <summary>
        /// Gererate Unique name of file
        /// </summary>
        /// <param name="fileName">File Name</param>
        /// <returns>Newly Generated file name</returns>
        private string GenerateFileName(string fileName)
        {
            string strFileName = string.Empty;
            string[] strName = fileName.Split('.');
            strFileName = DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") + "/" + DateTime.Now.ToUniversalTime().ToString("yyyyMMdd\\THHmmssfff") + "." + strName[strName.Length - 1];
            return strFileName;
        }

        /// <summary>
        /// Upload file asynchronous
        /// </summary>
        /// <param name="strFileName"File Name</param>
        /// <param name="fileData">File in byte format</param>
        /// <param name="fileMimeType">Mime Type</param>
        /// <returns>Uploaded url of file</returns>
        public async Task<string> UploadFileToBlobAsync(string strFileName, byte[] fileData, string fileMimeType)
        {
            try
            {
                CloudStorageAccount cloudStorageAccount = CloudStorageAccount.Parse(accessKey);
                CloudBlobClient cloudBlobClient = cloudStorageAccount.CreateCloudBlobClient();
                string strContainerName = "ibfiles";
                CloudBlobContainer cloudBlobContainer = cloudBlobClient.GetContainerReference(strContainerName);
                string fileName = this.GenerateFileName(strFileName);

                if (await cloudBlobContainer.CreateIfNotExistsAsync())
                {
                    await cloudBlobContainer.SetPermissionsAsync(new BlobContainerPermissions { PublicAccess = BlobContainerPublicAccessType.Blob });
                }

                if (fileName != null && fileData != null)
                {
                    CloudBlockBlob cloudBlockBlob = cloudBlobContainer.GetBlockBlobReference(fileName);
                    cloudBlockBlob.Properties.ContentType = fileMimeType;
                    await cloudBlockBlob.UploadFromByteArrayAsync(fileData, 0, fileData.Length);
                    return cloudBlockBlob.Uri.AbsoluteUri;
                }
                return "";
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }
    }
}

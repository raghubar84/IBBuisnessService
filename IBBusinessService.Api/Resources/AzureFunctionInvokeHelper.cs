using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace IBBusinessService.Api.Resources
{    
    /// <summary>
    /// Invoke Azure funtion
    /// </summary>
    public class AzureFunctionInvokeHelper
    {        
        private string AzureFuntionUrl;
        public  AzureFunctionInvokeHelper(IConfiguration configuration)
        {            
            AzureFuntionUrl = configuration.GetValue<string>("AppSettings:AzureFunctionURL");
        }

        /// <summary>
        /// Invoke function
        /// </summary>
        /// <param name="message">string message</param>
        /// <returns>string message</returns>
        public async Task<string> InvokeFunction(string message)
        {
            string functionResponse = string.Empty;
            dynamic content = new { name = message };

            CancellationToken cancellationToken;

            using (var client = new HttpClient())
            using (var request = new HttpRequestMessage(HttpMethod.Post, AzureFuntionUrl))
            using (var httpContent = CreateHttpContent(content))
            {
                request.Content = httpContent;
                using (var response = await client
                    .SendAsync(request, HttpCompletionOption.ResponseHeadersRead, cancellationToken)
                    .ConfigureAwait(false))
                {

                    functionResponse = response.Content.ReadAsStringAsync().Result;                   
                }
            }
            return functionResponse;
        }

        /// <summary>
        /// Serialize Json Into Stream
        /// </summary>
        /// <param name="value">Json Data</param>
        /// <param name="stream">stream</param>
        private void SerializeJsonIntoStream(object value, Stream stream)
        {
            using (var sw = new StreamWriter(stream, new UTF8Encoding(false), 1024, true))
            using (var jtw = new JsonTextWriter(sw) { Formatting = Formatting.None })
            {
                var js = new JsonSerializer();
                js.Serialize(jtw, value);
                jtw.Flush();
            }
        }

        /// <summary>
        /// Creating httpcontent
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        private HttpContent CreateHttpContent(object content)
        {
            HttpContent httpContent = null;

            if (content != null)
            {
                var ms = new MemoryStream();
                SerializeJsonIntoStream(content, ms);
                ms.Seek(0, SeekOrigin.Begin);
                httpContent = new StreamContent(ms);
                httpContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            }

            return httpContent;
        }
    }
}

using Microsoft.OpenApi.Models;

namespace IBBusinessService.Api.Resources
{
    internal class Info : OpenApiInfo
    {
        public new string Version { get; set; }
        public new string Title { get; set; }
        public new string Description { get; set; }
        public new string TermsOfService { get; set; }
        public new object Contact { get; set; }
    }
}

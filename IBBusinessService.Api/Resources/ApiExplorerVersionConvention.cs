using Microsoft.AspNetCore.Mvc.ApplicationModels;
using System.Linq;

namespace IBBusinessService.Api.Resources
{
    public class ApiExplorerVersionConvention : IControllerModelConvention
    {
        public void Apply(ControllerModel controller)
        {
            var controllerNamespace = controller.ControllerType.Namespace; 
            var apiVersion = controllerNamespace.Split('.').Last().ToLower();

            controller.ApiExplorer.GroupName = apiVersion;
        }
    }
}

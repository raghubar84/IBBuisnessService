using System;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using IBBusinessService.Domain.Models;
using IBBusinessService.Domain.Services;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Net.Http.Headers;

namespace IBBusinessService.Api.Filters
{
    /// <summary>
    /// filter attribute for authorize user
    /// </summary>
    [AttributeUsage(AttributeTargets.Class)]
    public class CustomAuthorization : Attribute, IAuthorizationFilter
    {
        private IUserService _userService;
        private IUserRoleMappingService _userRoleMappingService;

        /// <summary>
        /// Implementaion of authorization
        /// </summary>
        /// <param name="filterContext"></param>
        public void OnAuthorization(AuthorizationFilterContext filterContext)
        {
            _userService = filterContext.HttpContext.RequestServices.GetService<IUserService>();
            _userRoleMappingService = filterContext.HttpContext.RequestServices.GetService<IUserRoleMappingService>();

            if (filterContext != null)
            {
                Microsoft.Extensions.Primitives.StringValues authTokens;
                filterContext.HttpContext.Request.Headers.TryGetValue("authToken", out authTokens);

                var authToken = authTokens.FirstOrDefault();

                if (authToken != null)
                {
                    var user = GetUser(authToken);
                    if (user != null)
                    {   
                        var controllerActionDescriptor = filterContext.ActionDescriptor as Microsoft.AspNetCore.Mvc.Controllers.ControllerActionDescriptor;
                        string controllerName = controllerActionDescriptor?.ControllerName;
                        string actionName = controllerActionDescriptor?.ActionName;

                        bool hasAccess = UserHasAccess(user.UserId, controllerName, actionName);

                        if (hasAccess)
                        {
                            filterContext.HttpContext.Response.Headers.Add("authToken", authToken);
                            filterContext.HttpContext.Response.Headers.Add("AuthStatus", "Authorized");

                            filterContext.HttpContext.Response.Headers.Add("storeAccessiblity", "Authorized");

                            return;
                        }
                        else
                        {
                            filterContext.HttpContext.Response.Headers.Add("authToken", authToken);
                            filterContext.HttpContext.Response.Headers.Add("AuthStatus", "NotAuthorized");

                            filterContext.HttpContext.Response.StatusCode = (int)HttpStatusCode.Forbidden;
                            filterContext.HttpContext.Response.HttpContext.Features.Get<IHttpResponseFeature>().ReasonPhrase = "Not Authorized";
                            filterContext.Result = new JsonResult("NotAuthorized")
                            {
                                Value = new
                                {
                                    Status = "Error",
                                    Message = "You are not allowed to perform this action."
                                },
                            };
                        }
                    }
                    else
                    {
                        filterContext.HttpContext.Response.Headers.Add("authToken", authToken);
                        filterContext.HttpContext.Response.Headers.Add("AuthStatus", "NotAuthorized");

                        filterContext.HttpContext.Response.StatusCode = (int)HttpStatusCode.Forbidden;
                        filterContext.HttpContext.Response.HttpContext.Features.Get<IHttpResponseFeature>().ReasonPhrase = "Not Authorized";
                        filterContext.Result = new JsonResult("NotAuthorized")
                        {
                            Value = new
                            {
                                Status = "Error",
                                Message = "Invalid Token"
                            },
                        };
                    }

                }
                else
                {
                    filterContext.HttpContext.Response.StatusCode = (int)HttpStatusCode.ExpectationFailed;
                    filterContext.HttpContext.Response.HttpContext.Features.Get<IHttpResponseFeature>().ReasonPhrase = "Please Provide authToken";
                    filterContext.Result = new JsonResult("Please Provide authToken")
                    {
                        Value = new
                        {
                            Status = "Error",
                            Message = "Please Provide authToken"
                        },
                    };
                }
            }
        }

        /// <summary>
        /// To get user details
        /// </summary>
        /// <param name="authToken">UserName</param>
        /// <returns>user data</returns>
        public UserMaster GetUser(string authToken)
        {
            var data = _userService.FindUserByName(authToken).GetAwaiter().GetResult();
            return data;
        }

        /// <summary>
        /// To check user access
        /// </summary>
        /// <param name="UserId"></param>
        /// <param name="ControllerName"></param>
        /// <param name="ActionName"></param>
        /// <returns>true or false</returns>
        public bool UserHasAccess(int UserId, string ControllerName, string ActionName)
        {
            var roleMappings = _userRoleMappingService.FindAllAccess(UserId).GetAwaiter().GetResult();
            if (roleMappings == null)
                return false;
            string methodType = string.Empty;
            if (ActionName.ToLower().Contains("post"))
                methodType = "add";
            else if (ActionName.ToLower().Contains("put"))
                methodType = "update";
            else if(ActionName.ToLower().Contains("delete"))
                methodType = "delete";
            else
                methodType = "view";

            var data = roleMappings.Where(w => w.ControllerName.ToLower().Equals(ControllerName.ToLower())
                                               && w.Action.ToLower().Equals(methodType));
            if (data.FirstOrDefault() != null && data.FirstOrDefault().Allowed == true)
                return true;
            else
                return false;
        }
    }
}

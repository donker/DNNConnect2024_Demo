using Demo.DnnConnect.DemoModule.Common;
using DotNetNuke.Web.Api;
using System.Net.Http;
using System.Web.Http;
using System.Net;

namespace Demo.DnnConnect.DemoModule.Api
{
  public class TestController : DemoModuleApiController, IServiceRouteMapper
  {
    public void RegisterRoutes(IMapRoute mapRouteManager)
    {
      mapRouteManager.MapHttpRoute("Demo/DemoModule", "DemoModuleTestControllerMap1", "Test/{action}", new { Controller = "Test" }, null, new[] { "Demo.DnnConnect.DemoModule.Api" });
    }

    [HttpGet]
    [ApiTokenAuthorize("Test1", "~/DesktopModules/MVC/Demo/DemoModule/App_LocalResources/SharedResources.resx", DotNetNuke.Web.Api.Auth.ApiTokens.Models.ApiTokenScope.Host)]
    public HttpResponseMessage Test1()
    {
      return Request.CreateResponse(HttpStatusCode.OK, "Hello from Test1");
    }

    [HttpGet]
    [ApiTokenAuthorize("Test2", "~/DesktopModules/MVC/Demo/DemoModule/App_LocalResources/SharedResources.resx", DotNetNuke.Web.Api.Auth.ApiTokens.Models.ApiTokenScope.Portal)]
    public HttpResponseMessage Test2()
    {
      return Request.CreateResponse(HttpStatusCode.OK, $"Hello from {PortalSettings.PortalName}");
    }

    [HttpGet]
    [ApiTokenAuthorize("Test3", "~/DesktopModules/MVC/Demo/DemoModule/App_LocalResources/SharedResources.resx", DotNetNuke.Web.Api.Auth.ApiTokens.Models.ApiTokenScope.User)]
    public HttpResponseMessage Test3()
    {
      return Request.CreateResponse(HttpStatusCode.OK, $"Hello from {UserInfo.DisplayName}.");
    }
  }
}

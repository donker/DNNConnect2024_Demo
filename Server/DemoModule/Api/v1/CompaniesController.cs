using Demo.DnnConnect.DemoModule.Common;
using DotNetNuke.Web.Api;
using System.Net.Http;
using System.Web.Http;
using System.Net;
using Demo.DnnConnect.Core.Repositories;
using System.Linq;

namespace Demo.DnnConnect.DemoModule.Api.v1
{
  public class CompaniesController : DemoModuleApiController, IServiceRouteMapper
  {
    public void RegisterRoutes(IMapRoute mapRouteManager)
    {
      mapRouteManager.MapHttpRoute("v1", "DemoModuleCompaniesControllerMap1", "companies", new { Controller = "Companies", Action = "List" }, null, new[] { "Demo.DnnConnect.DemoModule.Api.v1" });
      mapRouteManager.MapHttpRoute("v1", "DemoModuleCompaniesControllerMap2", "companies/{companyId}", new { Controller = "Companies", Action = "Company" }, new { companyId = "-?\\d+" }, new[] { "Demo.DnnConnect.DemoModule.Api.v1" });
      mapRouteManager.MapHttpRoute("v1", "DemoModuleCompaniesControllerMap3", "companies/{companyId}/products", new { Controller = "Companies", Action = "Products" }, new { companyId = "-?\\d+" }, new[] { "Demo.DnnConnect.DemoModule.Api.v1" });
    }

    [HttpGet]
    [ApiTokenAuthorize("Companies", "~/DesktopModules/MVC/Demo/DemoModule/App_LocalResources/SharedResources.resx", DotNetNuke.Web.Api.Auth.ApiTokens.Models.ApiTokenScope.Portal)]
    public HttpResponseMessage List()
    {
      return Request.CreateResponse(HttpStatusCode.OK, CompanyRepository.Instance.GetCompanies(PortalSettings.PortalId).Select(c => new
      {
        id = c.CompanyId,
        name = c.CompanyName
      }));
    }

    [HttpGet]
    [ApiTokenAuthorize("Companies", "~/DesktopModules/MVC/Demo/DemoModule/App_LocalResources/SharedResources.resx", DotNetNuke.Web.Api.Auth.ApiTokens.Models.ApiTokenScope.Portal)]
    public HttpResponseMessage Company(int companyId)
    {
      return Request.CreateResponse(HttpStatusCode.OK, CompanyRepository.Instance.GetCompany(PortalSettings.PortalId, companyId));
    }

    [HttpGet]
    [ApiTokenAuthorize("Companies", "~/DesktopModules/MVC/Demo/DemoModule/App_LocalResources/SharedResources.resx", DotNetNuke.Web.Api.Auth.ApiTokens.Models.ApiTokenScope.Portal)]
    public HttpResponseMessage Products(int companyId)
    {
      return Request.CreateResponse(HttpStatusCode.OK, ProductRepository.Instance.GetProductsByCompany(companyId));
    }
  }
}

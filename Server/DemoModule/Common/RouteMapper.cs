using DotNetNuke.Web.Api;

namespace Demo.DnnConnect.DemoModule.Common
{
    public class RouteMapper : IServiceRouteMapper
    {
        public void RegisterRoutes(IMapRoute mapRouteManager)
        {
            mapRouteManager.MapHttpRoute("Demo/DemoModule", "DemoModuleMap1", "{controller}/{action}", null, null, new[] { "Demo.DnnConnect.DemoModule.Api" });
            mapRouteManager.MapHttpRoute("Demo/DemoModule", "DemoModuleMap2", "{controller}/{action}/{id}", null, new { id = "-?\\d+" }, new[] { "Demo.DnnConnect.DemoModule.Api" });
        }
    }
}
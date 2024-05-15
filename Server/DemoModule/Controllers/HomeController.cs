using System.Web.Mvc;
using Demo.DnnConnect.DemoModule.Common;

namespace Demo.DnnConnect.DemoModule.Controllers
{
    public class HomeController : DemoModuleMvcController
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View(DemoModuleModuleContext.Settings.View);
        }
    }
}

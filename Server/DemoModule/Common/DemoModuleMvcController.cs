using DotNetNuke.Web.Mvc.Framework.Controllers;
using DotNetNuke.Web.Mvc.Routing;
using System.Web.Mvc;
using System.Web.Routing;

namespace Demo.DnnConnect.DemoModule.Common
{
    public class DemoModuleMvcController : DnnController
    {

        private ContextHelper _DemoModuleModuleContext;
        public ContextHelper DemoModuleModuleContext
        {
            get { return _DemoModuleModuleContext ?? (_DemoModuleModuleContext = new ContextHelper(this)); }
        }

    }
}
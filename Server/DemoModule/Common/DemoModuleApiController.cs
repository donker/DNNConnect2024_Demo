using DotNetNuke.Instrumentation;
using DotNetNuke.Web.Api;
using System.Net;
using System.Net.Http;

namespace Demo.DnnConnect.DemoModule.Common
{
    public class DemoModuleApiController : DnnApiController
    {
        public static readonly ILog Logger = LoggerSource.Instance.GetLogger(typeof(DnnApiController));
        
        private ContextHelper _DemoModuleModuleContext;
        public ContextHelper DemoModuleModuleContext
        {
            get { return _DemoModuleModuleContext ?? (_DemoModuleModuleContext = new ContextHelper(this)); }
        }

        public HttpResponseMessage ServiceError(string message) {
            return Request.CreateResponse(HttpStatusCode.InternalServerError, message);
        }

        public HttpResponseMessage AccessViolation(string message)
        {
            return Request.CreateResponse(HttpStatusCode.Unauthorized, message);
        }

    }
}
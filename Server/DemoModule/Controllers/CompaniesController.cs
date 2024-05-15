using Demo.DnnConnect.Core.Repositories;
using Demo.DnnConnect.DemoModule.Common;
using System.Web.Mvc;

namespace Demo.DnnConnect.DemoModule.Controllers
{
  public class CompaniesController : DemoModuleMvcController
  {
    [HttpGet]
    public ActionResult Index(int companyId)
    {
      return View(CompanyRepository.Instance.GetCompany(PortalSettings.PortalId, companyId));
    }
  }
}

using System;
using System.Collections.Generic;
using System.Linq;
using DotNetNuke.Common;
using DotNetNuke.Data;
using DotNetNuke.Framework;
using Demo.DnnConnect.Core.Models.Companies;

namespace Demo.DnnConnect.Core.Repositories
{

	public partial class CompanyRepository : ServiceLocator<ICompanyRepository, CompanyRepository>, ICompanyRepository
 {
        protected override Func<ICompanyRepository> GetFactory()
        {
            return () => new CompanyRepository();
        }
        public IEnumerable<Company> GetCompanies(int portalId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Company>();
                return rep.Get(portalId);
            }
        }
        public Company GetCompany(int portalId, int companyId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Company>();
                return rep.GetById(companyId, portalId);
            }
        }
        public Company AddCompany(Company company, int userId)
        {
            Requires.NotNull(company);
            Requires.PropertyNotNegative(company, "PortalId");
            company.CreatedByUserID = userId;
            company.CreatedOnDate = DateTime.Now;
            company.LastModifiedByUserID = userId;
            company.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Company>();
                rep.Insert(company);
            }
            return company;
        }
        public void DeleteCompany(Company company)
        {
            Requires.NotNull(company);
            Requires.PropertyNotNegative(company, "CompanyId");
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Company>();
                rep.Delete(company);
            }
        }
        public void DeleteCompany(int portalId, int companyId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Company>();
                rep.Delete("WHERE PortalId = @0 AND CompanyId = @1", portalId, companyId);
            }
        }
        public void UpdateCompany(Company company, int userId)
        {
            Requires.NotNull(company);
            Requires.PropertyNotNegative(company, "CompanyId");
            company.LastModifiedByUserID = userId;
            company.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Company>();
                rep.Update(company);
            }
        } 
    }
    public partial interface ICompanyRepository
    {
        IEnumerable<Company> GetCompanies(int portalId);
        Company GetCompany(int portalId, int companyId);
        Company AddCompany(Company company, int userId);
        void DeleteCompany(Company company);
        void DeleteCompany(int portalId, int companyId);
        void UpdateCompany(Company company, int userId);
    }
}


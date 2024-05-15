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
    }
    public partial interface ICompanyRepository
    {
    }
}


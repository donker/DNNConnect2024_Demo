using System;
using System.Collections.Generic;
using System.Linq;
using DotNetNuke.Common;
using DotNetNuke.Data;
using DotNetNuke.Framework;
using Demo.DnnConnect.Core.Models.ProductModels;

namespace Demo.DnnConnect.Core.Repositories
{
	public partial class ProductModelRepository : ServiceLocator<IProductModelRepository, ProductModelRepository>, IProductModelRepository
    {
    }
    public partial interface IProductModelRepository
    {
    }
}


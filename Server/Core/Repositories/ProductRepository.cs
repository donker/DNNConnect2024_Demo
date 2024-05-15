using System;
using System.Collections.Generic;
using System.Linq;
using DotNetNuke.Common;
using DotNetNuke.Data;
using DotNetNuke.Framework;
using Demo.DnnConnect.Core.Models.Products;

namespace Demo.DnnConnect.Core.Repositories
{
	public partial class ProductRepository : ServiceLocator<IProductRepository, ProductRepository>, IProductRepository
    {
    }
    public partial interface IProductRepository
    {
    }
}


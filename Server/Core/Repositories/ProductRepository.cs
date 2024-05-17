using Demo.DnnConnect.Core.Models.Products;
using DotNetNuke.Collections;
using DotNetNuke.Data;
using DotNetNuke.Framework;
using System.Data.SqlClient;

namespace Demo.DnnConnect.Core.Repositories
{
  public partial class ProductRepository : ServiceLocator<IProductRepository, ProductRepository>, IProductRepository
  {
    public IPagedList<Product> List(int portalId, string sortField, SortOrder sortOrder, int pageSize, int pageIndex)
    {
      using (var context = DataContext.Instance())
      {
        var repo = context.GetRepository<Product>();
        var so = sortOrder == SortOrder.Descending ? "DESC" : "ASC";
        var sql = string.Format("WHERE PortalId=@0 ORDER BY {0} {1}", sortField, so);
        return repo.Find(pageIndex, pageSize, sql, portalId);
      }
    }
  }
  public partial interface IProductRepository
  {
    IPagedList<Product> List(int portalId, string sortField, SortOrder sortOrder, int pageSize, int pageIndex);
  }
}


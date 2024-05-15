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
        protected override Func<IProductModelRepository> GetFactory()
        {
            return () => new ProductModelRepository();
        }
        public IEnumerable<ProductModel> GetProductModels(int portalId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductModel>();
                return rep.Get(portalId);
            }
        }
        public ProductModel GetProductModel(int portalId, int productModelId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductModel>();
                return rep.GetById(productModelId, portalId);
            }
        }
        public ProductModel AddProductModel(ProductModel productModel, int userId)
        {
            Requires.NotNull(productModel);
            Requires.PropertyNotNegative(productModel, "PortalId");
            productModel.CreatedByUserID = userId;
            productModel.CreatedOnDate = DateTime.Now;
            productModel.LastModifiedByUserID = userId;
            productModel.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductModel>();
                rep.Insert(productModel);
            }
            return productModel;
        }
        public void DeleteProductModel(ProductModel productModel)
        {
            Requires.NotNull(productModel);
            Requires.PropertyNotNegative(productModel, "ProductModelId");
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductModel>();
                rep.Delete(productModel);
            }
        }
        public void DeleteProductModel(int portalId, int productModelId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductModel>();
                rep.Delete("WHERE PortalId = @0 AND ProductModelId = @1", portalId, productModelId);
            }
        }
        public void UpdateProductModel(ProductModel productModel, int userId)
        {
            Requires.NotNull(productModel);
            Requires.PropertyNotNegative(productModel, "ProductModelId");
            productModel.LastModifiedByUserID = userId;
            productModel.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductModel>();
                rep.Update(productModel);
            }
        } 
    }
    public partial interface IProductModelRepository
    {
        IEnumerable<ProductModel> GetProductModels(int portalId);
        ProductModel GetProductModel(int portalId, int productModelId);
        ProductModel AddProductModel(ProductModel productModel, int userId);
        void DeleteProductModel(ProductModel productModel);
        void DeleteProductModel(int portalId, int productModelId);
        void UpdateProductModel(ProductModel productModel, int userId);
    }
}


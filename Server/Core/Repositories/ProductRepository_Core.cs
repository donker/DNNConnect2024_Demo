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
        protected override Func<IProductRepository> GetFactory()
        {
            return () => new ProductRepository();
        }
        public IEnumerable<Product> GetProducts()
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                return rep.Get();
            }
        }
        public IEnumerable<Product> GetProductsByCompany(int companyId)
        {
            using (var context = DataContext.Instance())
            {
                return context.ExecuteQuery<Product>(System.Data.CommandType.Text,
                    "SELECT * FROM {databaseOwner}{objectQualifier}vw_DemoModule_Products WHERE CompanyId=@0",
                    companyId);
            }
        }
        public Product GetProduct(int productId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                return rep.GetById(productId);
            }
        }
        public ProductBase AddProduct(ProductBase product, int userId)
        {
            Requires.NotNull(product);
            product.CreatedByUserID = userId;
            product.CreatedOnDate = DateTime.Now;
            product.LastModifiedByUserID = userId;
            product.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductBase>();
                rep.Insert(product);
            }
            return product;
        }
        public void DeleteProduct(ProductBase product)
        {
            Requires.NotNull(product);
            Requires.PropertyNotNegative(product, "ProductId");
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductBase>();
                rep.Delete(product);
            }
        }
        public void DeleteProduct(int productId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductBase>();
                rep.Delete("WHERE ProductId = @0", productId);
            }
        }
        public void UpdateProduct(ProductBase product, int userId)
        {
            Requires.NotNull(product);
            Requires.PropertyNotNegative(product, "ProductId");
            product.LastModifiedByUserID = userId;
            product.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<ProductBase>();
                rep.Update(product);
            }
        } 
    }
    public partial interface IProductRepository
    {
        IEnumerable<Product> GetProducts();
        IEnumerable<Product> GetProductsByCompany(int companyId);
        Product GetProduct(int productId);
        ProductBase AddProduct(ProductBase product, int userId);
        void DeleteProduct(ProductBase product);
        void DeleteProduct(int productId);
        void UpdateProduct(ProductBase product, int userId);
    }
}


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
        public Product GetProduct(int productId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                return rep.GetById(productId);
            }
        }
        public Product AddProduct(Product product, int userId)
        {
            Requires.NotNull(product);
            product.CreatedByUserID = userId;
            product.CreatedOnDate = DateTime.Now;
            product.LastModifiedByUserID = userId;
            product.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                rep.Insert(product);
            }
            return product;
        }
        public void DeleteProduct(Product product)
        {
            Requires.NotNull(product);
            Requires.PropertyNotNegative(product, "ProductId");
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                rep.Delete(product);
            }
        }
        public void DeleteProduct(int productId)
        {
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                rep.Delete("WHERE ProductId = @0", productId);
            }
        }
        public void UpdateProduct(Product product, int userId)
        {
            Requires.NotNull(product);
            Requires.PropertyNotNegative(product, "ProductId");
            product.LastModifiedByUserID = userId;
            product.LastModifiedOnDate = DateTime.Now;
            using (var context = DataContext.Instance())
            {
                var rep = context.GetRepository<Product>();
                rep.Update(product);
            }
        } 
    }
    public partial interface IProductRepository
    {
        IEnumerable<Product> GetProducts();
        Product GetProduct(int productId);
        Product AddProduct(Product product, int userId);
        void DeleteProduct(Product product);
        void DeleteProduct(int productId);
        void UpdateProduct(Product product, int userId);
    }
}


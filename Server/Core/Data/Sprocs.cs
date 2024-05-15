using System;
using System.Collections.Generic;
using Demo.DnnConnect.Core.Models.Products;
using DotNetNuke.Data;

namespace Demo.DnnConnect.Core.Data
{
    public class Sprocs
    {
        // SELECT
        //  p.*
        // FROM dbo.vw_DemoModule_Products p
        // WHERE p.PortalId=@PortalId
        // ;  
        public static IEnumerable<Product> GetProductsByPortal(int portalId)
        {
            using (var context = DataContext.Instance())
            {
                return context.ExecuteQuery<Product>(System.Data.CommandType.StoredProcedure,
                    "DemoModule_GetProductsByPortal",
                    portalId);
            }
        }

        // UPDATE dbo.DemoModule_Products
        // SET ExpiryDate=@NewExpiryDate
        // WHERE ProductId=@ProductId
        // ;  
        public static void SetProductExpiryDate(int productId, DateTime newExpiryDate)
        {
            using (var context = DataContext.Instance())
            {
                context.Execute(System.Data.CommandType.StoredProcedure,
                    "DemoModule_SetProductExpiryDate",
                    productId, newExpiryDate);
            }
        }

    }
}

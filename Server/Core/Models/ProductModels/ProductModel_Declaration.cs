using System;
using System.Runtime.Serialization;
using DotNetNuke.ComponentModel.DataAnnotations;
using Demo.DnnConnect.Core.Data;

namespace Demo.DnnConnect.Core.Models.ProductModels
{
    [TableName("DemoModule_ProductModels")]
    [PrimaryKey("ProductModelId", AutoIncrement = true)]
    [DataContract]
    [Scope("PortalId")]
    public partial class ProductModel  : AuditableEntity 
    {

        #region .ctor
        public ProductModel()
        {
            ProductModelId = -1;
        }
        #endregion

        #region Properties
        [DataMember]
        public int ProductModelId { get; set; }
        [DataMember]
        public int PortalId { get; set; }
        [DataMember]
        public string ModelName { get; set; }
        #endregion

        #region Methods
        public void ReadProductModel(ProductModel productModel)
        {
            if (productModel.ProductModelId > -1)
                ProductModelId = productModel.ProductModelId;

            if (productModel.PortalId > -1)
                PortalId = productModel.PortalId;

            if (!String.IsNullOrEmpty(productModel.ModelName))
                ModelName = productModel.ModelName;

        }
        #endregion

    }
}




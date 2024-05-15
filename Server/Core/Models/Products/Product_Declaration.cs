using System;
using System.Runtime.Serialization;
using DotNetNuke.ComponentModel.DataAnnotations;
using Demo.DnnConnect.Core.Data;

namespace Demo.DnnConnect.Core.Models.Products
{
    [TableName("DemoModule_Products")]
    [PrimaryKey("ProductId", AutoIncrement = true)]
    [DataContract]
    public partial class Product  : AuditableEntity 
    {

        #region .ctor
        public Product()
        {
            ProductId = -1;
        }
        #endregion

        #region Properties
        [DataMember]
        public int ProductId { get; set; }
        [DataMember]
        public int CompanyId { get; set; }
        [DataMember]
        public int ProductModelId { get; set; }
        [DataMember]
        public string SerialNr { get; set; }
        [DataMember]
        public string Location { get; set; }
        [DataMember]
        public DateTime? ExpiryDate { get; set; }
        #endregion

        #region Methods
        public void ReadProduct(Product product)
        {
            if (product.ProductId > -1)
                ProductId = product.ProductId;

            if (product.CompanyId > -1)
                CompanyId = product.CompanyId;

            if (product.ProductModelId > -1)
                ProductModelId = product.ProductModelId;

            if (!String.IsNullOrEmpty(product.SerialNr))
                SerialNr = product.SerialNr;

            if (!String.IsNullOrEmpty(product.Location))
                Location = product.Location;

            if (product.ExpiryDate != null)
            ExpiryDate = product.ExpiryDate;

        }
        #endregion

    }
}




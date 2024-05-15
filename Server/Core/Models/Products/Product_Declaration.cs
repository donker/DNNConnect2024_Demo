using System;
using System.Runtime.Serialization;
using DotNetNuke.ComponentModel.DataAnnotations;

namespace Demo.DnnConnect.Core.Models.Products
{

    [TableName("vw_DemoModule_Products")]
    [PrimaryKey("ProductId", AutoIncrement = true)]
    [DataContract]
    public partial class Product  : ProductBase 
    {

        #region .ctor
        public Product()  : base() 
        {
        }
        #endregion

        #region Properties
        [DataMember]
        public string ModelName { get; set; }
        [DataMember]
        public string CompanyName { get; set; }
        [DataMember]
        public string Address { get; set; }
        [DataMember]
        public string City { get; set; }
        [DataMember]
        public int PortalId { get; set; }
        [DataMember]
        public string CreatedByUserDisplayName { get; set; }
        [DataMember]
        public string LastModifiedByUserDisplayName { get; set; }
        #endregion

        #region Methods
        public ProductBase GetProductBase()
        {
            ProductBase res = new ProductBase();
             res.ProductId = ProductId;
             res.CompanyId = CompanyId;
             res.ProductModelId = ProductModelId;
             res.SerialNr = SerialNr;
             res.Location = Location;
             res.ExpiryDate = ExpiryDate;
            res.CreatedByUserID = CreatedByUserID;
            res.CreatedOnDate = CreatedOnDate;
            res.LastModifiedByUserID = LastModifiedByUserID;
            res.LastModifiedOnDate = LastModifiedOnDate;
            return res;
        }
        public Product Clone()
        {
            Product res = new Product();
            res.ProductId = ProductId;
            res.CompanyId = CompanyId;
            res.ProductModelId = ProductModelId;
            res.SerialNr = SerialNr;
            res.Location = Location;
            res.ExpiryDate = ExpiryDate;
            res.ModelName = ModelName;
            res.CompanyName = CompanyName;
            res.Address = Address;
            res.City = City;
            res.PortalId = PortalId;
            res.CreatedByUserDisplayName = CreatedByUserDisplayName;
            res.LastModifiedByUserDisplayName = LastModifiedByUserDisplayName;
            res.CreatedByUserID = CreatedByUserID;
            res.CreatedOnDate = CreatedOnDate;
            res.LastModifiedByUserID = LastModifiedByUserID;
            res.LastModifiedOnDate = LastModifiedOnDate;
            return res;
        }
        #endregion

    }
}

using System;
using System.Runtime.Serialization;
using DotNetNuke.ComponentModel.DataAnnotations;

namespace Demo.DnnConnect.Core.Models.Companies
{

    [TableName("vw_DemoModule_Companies")]
    [PrimaryKey("CompanyId", AutoIncrement = true)]
    [DataContract]
    [Scope("PortalId")]                
    public partial class Company  : CompanyBase 
    {

        #region .ctor
        public Company()  : base() 
        {
        }
        #endregion

        #region Properties
        [DataMember]
        public int? NrProducts { get; set; }
        #endregion

        #region Methods
        public CompanyBase GetCompanyBase()
        {
            CompanyBase res = new CompanyBase();
             res.CompanyId = CompanyId;
             res.PortalId = PortalId;
             res.CompanyName = CompanyName;
             res.Address = Address;
             res.PostalCode = PostalCode;
             res.City = City;
             res.Country = Country;
            res.CreatedByUserID = CreatedByUserID;
            res.CreatedOnDate = CreatedOnDate;
            res.LastModifiedByUserID = LastModifiedByUserID;
            res.LastModifiedOnDate = LastModifiedOnDate;
            return res;
        }
        public Company Clone()
        {
            Company res = new Company();
            res.CompanyId = CompanyId;
            res.PortalId = PortalId;
            res.CompanyName = CompanyName;
            res.Address = Address;
            res.PostalCode = PostalCode;
            res.City = City;
            res.Country = Country;
            res.NrProducts = NrProducts;
            res.CreatedByUserID = CreatedByUserID;
            res.CreatedOnDate = CreatedOnDate;
            res.LastModifiedByUserID = LastModifiedByUserID;
            res.LastModifiedOnDate = LastModifiedOnDate;
            return res;
        }
        #endregion

    }
}

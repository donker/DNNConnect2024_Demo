using System;
using System.Runtime.Serialization;
using DotNetNuke.ComponentModel.DataAnnotations;
using Demo.DnnConnect.Core.Data;

namespace Demo.DnnConnect.Core.Models.Companies
{
    [TableName("DemoModule_Companies")]
    [PrimaryKey("CompanyId", AutoIncrement = true)]
    [DataContract]
    [Scope("PortalId")]
    public partial class Company  : AuditableEntity 
    {

        #region .ctor
        public Company()
        {
            CompanyId = -1;
        }
        #endregion

        #region Properties
        [DataMember]
        public int CompanyId { get; set; }
        [DataMember]
        public int PortalId { get; set; }
        [DataMember]
        public string CompanyName { get; set; }
        [DataMember]
        public string Address { get; set; }
        [DataMember]
        public string PostalCode { get; set; }
        [DataMember]
        public string City { get; set; }
        [DataMember]
        public string Country { get; set; }
        #endregion

        #region Methods
        public void ReadCompany(Company company)
        {
            if (company.CompanyId > -1)
                CompanyId = company.CompanyId;

            if (company.PortalId > -1)
                PortalId = company.PortalId;

            if (!String.IsNullOrEmpty(company.CompanyName))
                CompanyName = company.CompanyName;

            if (!String.IsNullOrEmpty(company.Address))
                Address = company.Address;

            if (!String.IsNullOrEmpty(company.PostalCode))
                PostalCode = company.PostalCode;

            if (!String.IsNullOrEmpty(company.City))
                City = company.City;

            if (!String.IsNullOrEmpty(company.Country))
                Country = company.Country;

        }
        #endregion

    }
}




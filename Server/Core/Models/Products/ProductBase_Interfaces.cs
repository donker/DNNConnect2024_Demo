using System;
using System.Data;

using DotNetNuke.Common.Utilities;
using DotNetNuke.ComponentModel.DataAnnotations;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Tokens;

namespace Demo.DnnConnect.Core.Models.Products
{
    public partial class ProductBase : IHydratable, IPropertyAccess
    {

        #region IHydratable

        public virtual void Fill(IDataReader dr)
        {
            FillAuditFields(dr);
   ProductId = Convert.ToInt32(Null.SetNull(dr["ProductId"], ProductId));
   CompanyId = Convert.ToInt32(Null.SetNull(dr["CompanyId"], CompanyId));
   ProductModelId = Convert.ToInt32(Null.SetNull(dr["ProductModelId"], ProductModelId));
   SerialNr = Convert.ToString(Null.SetNull(dr["SerialNr"], SerialNr));
   Location = Convert.ToString(Null.SetNull(dr["Location"], Location));
   ExpiryDate = Convert.ToDateTime(Null.SetNull(dr["ExpiryDate"], ExpiryDate));
        }

        [IgnoreColumn()]
        public int KeyID
        {
            get { return ProductId; }
            set { ProductId = value; }
        }
        #endregion

        #region IPropertyAccess
        public virtual string GetProperty(string strPropertyName, string strFormat, System.Globalization.CultureInfo formatProvider, DotNetNuke.Entities.Users.UserInfo accessingUser, DotNetNuke.Services.Tokens.Scope accessLevel, ref bool propertyNotFound)
        {
            switch (strPropertyName.ToLower())
            {
    case "productid": // Int
     return ProductId.ToString(strFormat, formatProvider);
    case "companyid": // Int
     return CompanyId.ToString(strFormat, formatProvider);
    case "productmodelid": // Int
     return ProductModelId.ToString(strFormat, formatProvider);
    case "serialnr": // VarChar
     if (SerialNr == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(SerialNr, strFormat);
    case "location": // NVarChar
     return PropertyAccess.FormatString(Location, strFormat);
    case "expirydate": // Date
     if (ExpiryDate == null)
     {
         return "";
     };
     return ((DateTime)ExpiryDate).ToString(strFormat, formatProvider);
                default:
                    propertyNotFound = true;
                    break;
            }

            return Null.NullString;
        }

        [IgnoreColumn()]
        public CacheLevel Cacheability
        {
            get { return CacheLevel.fullyCacheable; }
        }
        #endregion

    }
}


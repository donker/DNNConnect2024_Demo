using System;
using System.Data;

using DotNetNuke.Common.Utilities;
using DotNetNuke.ComponentModel.DataAnnotations;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Tokens;

namespace Demo.DnnConnect.Core.Models.Companies
{
    public partial class CompanyBase : IHydratable, IPropertyAccess
    {

        #region IHydratable

        public virtual void Fill(IDataReader dr)
        {
            FillAuditFields(dr);
   CompanyId = Convert.ToInt32(Null.SetNull(dr["CompanyId"], CompanyId));
   PortalId = Convert.ToInt32(Null.SetNull(dr["PortalId"], PortalId));
   CompanyName = Convert.ToString(Null.SetNull(dr["CompanyName"], CompanyName));
   Address = Convert.ToString(Null.SetNull(dr["Address"], Address));
   PostalCode = Convert.ToString(Null.SetNull(dr["PostalCode"], PostalCode));
   City = Convert.ToString(Null.SetNull(dr["City"], City));
   Country = Convert.ToString(Null.SetNull(dr["Country"], Country));
        }

        [IgnoreColumn()]
        public int KeyID
        {
            get { return CompanyId; }
            set { CompanyId = value; }
        }
        #endregion

        #region IPropertyAccess
        public virtual string GetProperty(string strPropertyName, string strFormat, System.Globalization.CultureInfo formatProvider, DotNetNuke.Entities.Users.UserInfo accessingUser, DotNetNuke.Services.Tokens.Scope accessLevel, ref bool propertyNotFound)
        {
            switch (strPropertyName.ToLower())
            {
    case "companyid": // Int
     return CompanyId.ToString(strFormat, formatProvider);
    case "portalid": // Int
     return PortalId.ToString(strFormat, formatProvider);
    case "companyname": // NVarChar
     return PropertyAccess.FormatString(CompanyName, strFormat);
    case "address": // NVarChar
     if (Address == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(Address, strFormat);
    case "postalcode": // VarChar
     if (PostalCode == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(PostalCode, strFormat);
    case "city": // NVarChar
     if (City == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(City, strFormat);
    case "country": // NVarChar
     if (Country == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(Country, strFormat);
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


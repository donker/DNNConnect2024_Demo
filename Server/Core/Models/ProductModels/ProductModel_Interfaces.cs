using System;
using System.Data;

using DotNetNuke.Common.Utilities;
using DotNetNuke.ComponentModel.DataAnnotations;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Tokens;

namespace Demo.DnnConnect.Core.Models.ProductModels
{
    public partial class ProductModel : IHydratable, IPropertyAccess
    {

        #region IHydratable

        public virtual void Fill(IDataReader dr)
        {
            FillAuditFields(dr);
   ProductModelId = Convert.ToInt32(Null.SetNull(dr["ProductModelId"], ProductModelId));
   PortalId = Convert.ToInt32(Null.SetNull(dr["PortalId"], PortalId));
   ModelName = Convert.ToString(Null.SetNull(dr["ModelName"], ModelName));
        }

        [IgnoreColumn()]
        public int KeyID
        {
            get { return ProductModelId; }
            set { ProductModelId = value; }
        }
        #endregion

        #region IPropertyAccess
        public virtual string GetProperty(string strPropertyName, string strFormat, System.Globalization.CultureInfo formatProvider, DotNetNuke.Entities.Users.UserInfo accessingUser, DotNetNuke.Services.Tokens.Scope accessLevel, ref bool propertyNotFound)
        {
            switch (strPropertyName.ToLower())
            {
    case "productmodelid": // Int
     return ProductModelId.ToString(strFormat, formatProvider);
    case "portalid": // Int
     return PortalId.ToString(strFormat, formatProvider);
    case "modelname": // NVarChar
     return PropertyAccess.FormatString(ModelName, strFormat);
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


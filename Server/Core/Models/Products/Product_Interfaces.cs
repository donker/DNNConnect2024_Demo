using System;
using System.Data;
using System.Xml.Serialization;

using DotNetNuke.Common.Utilities;
using DotNetNuke.Services.Tokens;

namespace Demo.DnnConnect.Core.Models.Products
{

 [Serializable(), XmlRoot("Product")]
 public partial class Product
 {

  #region IHydratable
  public override void Fill(IDataReader dr)
  {
   base.Fill(dr);
   ModelName = Convert.ToString(Null.SetNull(dr["ModelName"], ModelName));
   CompanyName = Convert.ToString(Null.SetNull(dr["CompanyName"], CompanyName));
   Address = Convert.ToString(Null.SetNull(dr["Address"], Address));
   City = Convert.ToString(Null.SetNull(dr["City"], City));
   CreatedByUserDisplayName = Convert.ToString(Null.SetNull(dr["CreatedByUserDisplayName"], CreatedByUserDisplayName));
   LastModifiedByUserDisplayName = Convert.ToString(Null.SetNull(dr["LastModifiedByUserDisplayName"], LastModifiedByUserDisplayName));
  }
  #endregion

  #region IPropertyAccess
  public override string GetProperty(string strPropertyName, string strFormat, System.Globalization.CultureInfo formatProvider, DotNetNuke.Entities.Users.UserInfo accessingUser, DotNetNuke.Services.Tokens.Scope accessLevel, ref bool propertyNotFound)
  {
   switch (strPropertyName.ToLower()) {
    case "modelname": // NVarChar
     return PropertyAccess.FormatString(ModelName, strFormat);
    case "companyname": // NVarChar
     return PropertyAccess.FormatString(CompanyName, strFormat);
    case "address": // NVarChar
     if (Address == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(Address, strFormat);
    case "city": // NVarChar
     if (City == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(City, strFormat);
    case "createdbyuserdisplayname": // NVarChar
     if (CreatedByUserDisplayName == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(CreatedByUserDisplayName, strFormat);
    case "lastmodifiedbyuserdisplayname": // NVarChar
     if (LastModifiedByUserDisplayName == null)
     {
         return "";
     };
     return PropertyAccess.FormatString(LastModifiedByUserDisplayName, strFormat);
    default:
       return base.GetProperty(strPropertyName, strFormat, formatProvider, accessingUser, accessLevel, ref propertyNotFound);
   }
  }
  #endregion

 }
}


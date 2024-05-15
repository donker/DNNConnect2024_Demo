using System;
using System.Data;
using System.Xml.Serialization;

using DotNetNuke.Common.Utilities;
using DotNetNuke.Services.Tokens;

namespace Demo.DnnConnect.Core.Models.Companies
{

 [Serializable(), XmlRoot("Company")]
 public partial class Company
 {

  #region IHydratable
  public override void Fill(IDataReader dr)
  {
   base.Fill(dr);
   NrProducts = Convert.ToInt32(Null.SetNull(dr["NrProducts"], NrProducts));
  }
  #endregion

  #region IPropertyAccess
  public override string GetProperty(string strPropertyName, string strFormat, System.Globalization.CultureInfo formatProvider, DotNetNuke.Entities.Users.UserInfo accessingUser, DotNetNuke.Services.Tokens.Scope accessLevel, ref bool propertyNotFound)
  {
   switch (strPropertyName.ToLower()) {
    case "nrproducts": // Int
     if (NrProducts == null)
     {
         return "";
     };
     return ((int)NrProducts).ToString(strFormat, formatProvider);
    default:
       return base.GetProperty(strPropertyName, strFormat, formatProvider, accessingUser, accessLevel, ref propertyNotFound);
   }
  }
  #endregion

 }
}


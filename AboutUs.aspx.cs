using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MW.Translation;

namespace Tabbouk.css
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = Translate("عن الشركة");
        }
        protected string Translate(String str)
        {
            string value = "";
            try
            {
                Translation translation = new Translation();
                if (Session["langId"] != null)
                {
                    translation.Key = Session["langId"].ToString();
                }
                else
                {
                    translation.Key = "AR";
                }
                value = translation.trans(str);
            }
            catch
            {
                value = str;
            }
            return value;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MW.Translation;

namespace Tabbouk
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DoCkecks();
        }
        private void DoCkecks()
        {
            //test.Attributes["href"] = "css/bootstrap.rtl.min.css";
            string lang = "AR";

            if (Session["langId"] != null && !String.IsNullOrEmpty(Session["langId"].ToString()))
            {
                if (Session["langId"].ToString() == "AR")
                {
                    //  lbMasterLanguage.Text = "EN";
                    Session["langId"] = "AR";
                }
                else if (Session["langId"].ToString() == "EN")
                {
                    //  lbMasterLanguage.Text = "عربي";
                    Session["langId"] = "EN";
                    lang = "EN";
                }
                else
                {
                    Session["langId"] = "RO";
                    lang = "RO";
                }
            }
            else
            {
                Session["langId"] = "AR";
            }


            //Literal cssFile = null;
            if (lang == "AR")
            {
                test.Attributes["href"] = "css/bootstrap.rtl.min.css";
                //cssFile = new Literal()
                //{
                //    Text = @"<link href=""" + Page.ResolveUrl("css/bootstrap.rtl.min.css") + @""" type=""text/css"" rel=""stylesheet""/>"
                //};
            }
            else
            {
                test.Attributes["href"] = "css/bootstrap.min.css";
                //cssFile = new Literal()
                //{
                //    Text = @"<link href=""" + Page.ResolveUrl("css/bootstrap.min.css") + @""" type=""text/css"" rel=""stylesheet""/>"
                //};
            }

            //Page.Header.Controls.Add(cssFile);
            
       
        
          
            
           
            

            //StaticText();

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Console.Out.WriteLine("Value: "+DropDownList1.SelectedValue);
            Session["langId"] = DropDownList1.SelectedValue;
            //if (Session["langId"].ToString() == "EN")
            //{
            //    Session["langId"] = "AR";
            //    //  lbMasterLanguage.Text = "EN";
            //}
            //else
            //{
            //    Session["langId"] = "EN";
            //    // lbMasterLanguage.Text = "عربي";
            //}

            DoCkecks();
           // Response.Redirect(Request.RawUrl);
            
        }


    }
}
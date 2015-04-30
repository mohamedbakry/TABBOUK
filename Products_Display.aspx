<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products_Display.aspx.cs" Inherits="Tabbouk.Products_Diaplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Portfolio -->
    <section id="Portfolio" class="content"> 
  
  <!-- Container -->
  <div class="container portfolio_title"> 
    
    <!-- Title -->
    <div class="section-title">
  
    <h2><%=Translate("منتجاتنا")%></h2>
    </div>
    <!--/Title --> 
    
  </div>
  <!-- Container -->
  
  <div class="portfolio-top"></div>
  

    <!-- Portfolio Wrapper -->
    <div class="isotope fadeInLeft animated wow" style="position: relative; overflow: hidden; height: 480px;" id="portfolio_wrapper"> 
        <% 
          int id;
          if (Session["langId"].ToString() == "EN")
             id = 1;
          else if (Session["langId"].ToString() == "RO")
              id=3;
          else
              id=2;
        int catid = int.Parse(Request.QueryString["CID"].ToString());
        System.Data.DataTable dt = Tabbouk.Commons.returnDTWith2Parameter("SP_Product_Cat_In_Lang", "LangID", id, "CatID", catid);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            int PID = int.Parse(dt.Rows[i]["ProductID"].ToString());
            %>
      <!-- Portfolio Item -->
      <div style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1); width: 337px; opacity: 1;" class="portfolio-item one-four   appleIOS isotope-item">
        <div class="portfolio_img"> <img src="<%=dt.Rows[i]["Image"].ToString()%>"  alt="Portfolio 1"> </div>        
        <div class="item_overlay" onclick="window.location='ProductView.aspx?PID=<%=PID %>&LangID=<%=id%>';">
          <div class="item_info"> 
            <h4 class="project_name"><%=dt.Rows[i]["ProductName"].ToString()%></h4>
          </div>
        </div>
        <p style="text-align:center; font-size:small; color:Blue;"><%=dt.Rows[i]["Description"].ToString()%></p>
        </div>
      <!--/Portfolio Item --> 
           <%} %>
    </div>
    <!--/Portfolio Wrapper --> 
    

  
  <div class="portfolio_btm"></div>
  
  
  <div id="project_container">
    <div class="clear"></div>
    <div id="project_data"></div>
  </div>
 
  
</section>
</asp:Content>

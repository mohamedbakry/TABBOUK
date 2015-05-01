<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Portofolio.aspx.cs" Inherits="Tabbouk.Portofolio" %>
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
  
  <!-- Portfolio Filters -->
  <div class="portfolio"> 
  
    <!--/Portfolio Filters --> 
    
    <!-- Portfolio Wrapper -->
    <div class="isotope fadeInLeft animated wow" style="position: relative;  overflow: hidden; height: 480px;" id="portfolio_wrapper"> 
      
      <!-- Portfolio Item -->

      <% 
          int id;
          if (Session["langId"].ToString() == "EN")
             id = 1;
          else if (Session["langId"].ToString() == "RO")
              id=3;
          else
              id=2;
        System.Data.DataTable dt = Tabbouk.Commons.returnDTWithParameter("SP_Category_SelectAll_LangID", "LangID", id.ToString());
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            %>
           <%int CatID = int.Parse(dt.Rows[i]["CatID"].ToString());%>
      <div style="position: absolute; left: 0px; top: 0px;   transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1); width: 337px; opacity: 1;" class="portfolio-item one-four   appleIOS isotope-item">
        <div class="portfolio_img"> <img src="<%=dt.Rows[i]["Image"].ToString()%>"  alt="Portfolio 1"> </div>        
        <div class="item_overlay" onclick="window.location='Products_Display.aspx?CID=<%=CatID %>&LangID=<%=id%>';">
          <div class="item_info" > 
            <h4 class="project_name"><%=dt.Rows[i]["CatName"].ToString()%></h4>
          </div>
        </div>
          
       
        </div>
       
      <!--/Portfolio Item --> 
      <%} %>
      <!-- Portfolio Item-->
     
      
    </div>
    <!--/Portfolio Wrapper --> 
    
 
  <!--/Portfolio Filters -->
  
  <div class="portfolio_btm"></div>
  
  
  <div id="project_container">
    <div class="clear"></div>
    <div id="project_data"></div>
  </div>
 
  
</section>
    <!--/Portfolio -->
</asp:Content>

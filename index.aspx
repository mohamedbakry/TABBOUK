<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Tabbouk.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, maximum-scale=1" />
    <title><%=Translate("تبوك") %></title>
    <link rel="icon" href="favicon.png" type="image/png" />
    <link id="test" href="css/bootstrap.rtl.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/respond-1.1.0.min.js"></script>
    <script src="js/html5shiv.js"></script>
    <script src="js/html5element.js"></script>
<![endif]-->
<style>
.col-lg-5 {
    width: 41.6667%;
    margin-top: -68px;
}
</style>
</head>
<body>
    <%-- <% string lang = "ar";
       if (Session["langId"] != null && Session["langId"].ToString() != string.Empty)
       {
           if (Session["langId"].ToString() == "EN")
               lang = "EN";
       } 
                              
    %>--%>
    <!--Header_section-->
    <header id="header_wrapper">
  <div class="container" style="width:100%;">
    <div class="header_box">
      <div class="logo">
      <% string lang = "ar";
         if (Session["langId"] != null && Session["langId"].ToString() != string.Empty)
         {
             if (Session["langId"].ToString() == "EN")
             {
               %>
               <a href="#"><img src="img/tabboukLOGOE.png" style="width:220px; height:60px;" alt="logo" /></a>
               <style>
               .top_left_cont h2 {
    font-size: 40px;
    color: #FFF;
    line-height: 52px;
    margin: 0px 0px 26px;
    font-family: "Raleway",sans-serif;
    text-align: left;
}
.navbar-inverse .navbar-collapse, .navbar-inverse .navbar-form {
    border-color: #101010;
    float: left;
}
.logo {
    margin-top: 8px;
    position: relative;
    z-index: 2;
    float: right;
}
.lang
{
    float:left;
    }
               </style>
               <%
}
             else if (Session["langId"].ToString() == "RO")
             {
               %>
               <a href="#"><img src="img/tabboukLOGOR.png" style="width:220px; height:60px;" alt="logo" /></a>
                <style>
               .top_left_cont h2 {
    font-size: 40px;
    color: #FFF;
    line-height: 52px;
    margin: 0px 0px 26px;
    font-family: "Raleway",sans-serif;
    text-align: left;
}
.navbar-inverse .navbar-nav > li > a {
  color: #222;
  font-size: 11px;
}
.navbar-inverse .navbar-collapse, .navbar-inverse .navbar-form {
    border-color: #101010;
    float: left;
}
.logo {
    margin-top: 8px;
    position: relative;
    z-index: 2;
    float: right;
}
.lang
{
    float:left;
    }
               </style>
               <%
}
             else
             {
               %>
           <a href="#"><img src="img/tabboukLOGOA.png" style="width:220px; height:60px;" alt="logo" /></a>
            <style>
               .top_left_cont h2 {
    font-size: 40px;
    color: #FFF;
    line-height: 52px;
    margin: 0px 0px 26px;
    font-family: "Raleway",sans-serif;
    text-align: right;
}
.navbar-inverse .navbar-nav > li > a {
  color: #222;
  font-size: 15px;
}
.navbar-inverse .navbar-collapse, .navbar-inverse .navbar-form {
    border-color: #101010;
   float: right;
}
.logo {
    margin-top: 8px;
    position: relative;
    z-index: 2;
    float: left;
}
.lang
{
    float:right;
    }
               </style>
           <%}
         }
         else
         {
                              
    %>
      <a href="#"><img src="img/tabboukLOGOA.png" style="width:220px; height:60px;" alt="logo" /></a>
        <style>
               .top_left_cont h2 {
    font-size: 40px;
    color: #FFF;
    line-height: 52px;
    margin: 0px 0px 26px;
    font-family: "Raleway",sans-serif;
    text-align: right;
}
.navbar-inverse .navbar-nav > li > a {
  color: #222;
  font-size: 15px;
}
.navbar-inverse .navbar-collapse, .navbar-inverse .navbar-form {
    border-color: #101010;
   float: right;
}
.logo {
    margin-top: 8px;
    position: relative;
    z-index: 2;
    float: left;
}
.lang
{
    float:right;
    }
               </style>
  <%} %>
      </div>
	  <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
	  <div class="lang">
       <form id="Form1" runat="server">
<asp:DropDownList style="margin-top:15px;" ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">

<asp:ListItem Value="AR">عربي</asp:ListItem>
<asp:ListItem Value="EN">English</asp:ListItem>
<asp:ListItem Value="RO">русский</asp:ListItem>
</asp:DropDownList>
              </form>
      </div>
        <div id="main-nav" class="collapse navbar-collapse navStyle">
      
			<ul class="nav navbar-nav" id="mainNav">
           
			  <li class="active"><a href="index.aspx" class="scroll-link"><%=Translate("الرئيسية")%></a></li>
			  <li><a href="AboutUs.aspx" class="scroll-link"><%=Translate("عن الشركة")%></a></li>
			  <li><a href="Services.aspx" class="scroll-link"><%=Translate("خدماتنا")%></a></li>
			  <li><a href="Portofolio.aspx" class="scroll-link"><%=Translate("منتجاتنا")%></a></li>
			  <li><a href="Clients.aspx" class="scroll-link"><%=Translate("عملائنا")%></a></li>
			  <li><a href="TeamWork.aspx" class="scroll-link"><%=Translate("فريق العمل")%></a></li>
			  <li><a href="ContactUs.aspx" class="scroll-link"><%=Translate("إتصل بنا")%></a></li>
              
			</ul>
              <!-- Single button -->
             
      
      </div>
      
      
	 </nav>

    </div>
  </div>
</header>
    <!--Header_section-->
    <!--Hero_Section-->
    <section id="hero_section" class="top_cont_outer">
  <div class="hero_wrapper">
    <div class="container">
      <div class="hero_section">
        <div class="row">
          <div class="col-lg-5 col-sm-7">
            <div class="top_left_cont zoomIn wow animated"> 
              <h2><%=Translate("We") %></h2>
              <p><%=Translate("Welcome") %>.</p>
              <a href="#service" class="read_more2"><%=Translate("إقرأ المزيد")%></a> </div>
          </div>
          <div class="col-lg-7 col-sm-5">
			<img src="img/main_device_image.png" class="zoomIn wow animated" alt="" />
		  </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <!--Hero_Section-->

    

    <!--Footer-->
    <footer class="footer_wrapper" id="contact">
  <div class="container">
    <div class="footer_bottom"><span>Copyright © 2015, Powered by <a href="https://eg.linkedin.com/pub/mohamed-bakry-mohamed/22/212/67b">Technology Group</a>. </span> </div>
     
  </div>
</footer>
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
    <script type="text/javascript" src="js/jquery.nav.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.js"></script>
    <script type="text/javascript" src="js/wow.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
</body>
</html>

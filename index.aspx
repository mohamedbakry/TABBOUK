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
           
			  <li class="active"><a href="#hero_section" class="scroll-link"><%=Translate("الرئيسية")%></a></li>
			  <li><a href="#aboutUs" class="scroll-link"><%=Translate("عن الشركة")%></a></li>
			  <li><a href="#service" class="scroll-link"><%=Translate("خدماتنا")%></a></li>
			  <li><a href="#Portfolio" class="scroll-link"><%=Translate("منتجاتنا")%></a></li>
			  <li><a href="#clients" class="scroll-link"><%=Translate("عملائنا")%></a></li>
			  <li><a href="#team" class="scroll-link"><%=Translate("فريق العمل")%></a></li>
			  <li><a href="#contact" class="scroll-link"><%=Translate("إتصل بنا")%></a></li>
              
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
    <section id="aboutUs"><!--Aboutus-->
<div class="inner_wrapper">
  <div class="container">
    <h2><%=Translate("عن الشركة")%></h2>
    <div class="inner_section">
	<div class="row">
      <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12 pull-right" style="width: 27.333%;"><img src="img/about-img.jpg" class="img-circle delay-03s animated wow zoomIn" alt=""></div>
      	<div class=" col-lg-7 col-md-7 col-sm-7 col-xs-12 pull-left" style="width: 68.333%;">
        	<div class=" delay-01s animated fadeInDown wow animated">
			<h3><%=Translate("About Head")%></h3><br/> 
            <p><%=Translate("About Details")%></p>
</div>
<div class="work_bottom"><a href="#contact" class="contact_btn"><%=Translate("إتصل بنا")%></a> </div>       
	   </div>
      	
      </div>
	  
      
    </div>
  </div> 
  </div>
</section>
    <!--Aboutus-->
    <!--Service-->
    <section id="service">
  <div class="container">
    <h2><%=Translate("خدماتنا")%></h2>
    <div class="service_wrapper">
      <div class="row">
        <div class="col-lg-4">
          <div class="service_block">
            <div class="service_icon delay-03s animated wow  zoomIn"> <span><i class="fa fa-android"></i></span> </div>
            <h3 class="animated fadeInUp wow">Android</h3>
            <p class="animated fadeInDown wow">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
        </div>
        <div class="col-lg-4 borderLeft">			
          <div class="service_block">
            <div class="service_icon icon2  delay-03s animated wow zoomIn"> <span><i class="fa fa-apple"></i></span> </div>
            <h3 class="animated fadeInUp wow">Apple IOS</h3>
            <p class="animated fadeInDown wow">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
        </div>
        <div class="col-lg-4 borderLeft">
          <div class="service_block">
            <div class="service_icon icon3  delay-03s animated wow zoomIn"> <span><i class="fa fa-html5"></i></span> </div>
            <h3 class="animated fadeInUp wow">Design</h3>
            <p class="animated fadeInDown wow">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
        </div>
      </div>
	   <div class="row borderTop">
        <div class="col-lg-4 mrgTop">
          <div class="service_block">
            <div class="service_icon delay-03s animated wow  zoomIn"> <span><i class="fa fa-dropbox"></i></span> </div>
            <h3 class="animated fadeInUp wow">Concept</h3>
            <p class="animated fadeInDown wow">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
        </div>
        <div class="col-lg-4 borderLeft mrgTop">
          <div class="service_block">
            <div class="service_icon icon2  delay-03s animated wow zoomIn"> <span><i class="fa fa-slack"></i></span> </div>
            <h3 class="animated fadeInUp wow">User Research</h3>
            <p class="animated fadeInDown wow">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
        </div>
        <div class="col-lg-4 borderLeft mrgTop">
          <div class="service_block">
            <div class="service_icon icon3  delay-03s animated wow zoomIn"> <span><i class="fa fa-users"></i></span> </div>
            <h3 class="animated fadeInUp wow">User Experience</h3>
            <p class="animated fadeInDown wow">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <!--Service-->
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
    <section class="page_section" id="clients"><!--page_section-->
  <h2><%=Translate("عملائنا")%></h2>
<!--page_section-->
<div class="client_logos"><!--client_logos-->
  <div class="container">
    <ul class="fadeInRight animated wow">
      <li><a href="javascript:void(0)"><img src="img/client_logo1.png" alt=""></a></li>
      <li><a href="javascript:void(0)"><img src="img/client_logo2.png" alt=""></a></li>
      <li><a href="javascript:void(0)"><img src="img/client_logo3.png" alt=""></a></li>
      <li><a href="javascript:void(0)"><img src="img/client_logo5.png" alt=""></a></li>
    </ul>
  </div>
</div>
</section>
    <!--client_logos-->
    <section class="page_section team" id="team"><!--main-section team-start-->
  <div class="container">
    <h2><%=Translate("فريق العمل")%></h2>
    
    <div class="team_section clearfix">
      <div class="team_area">
        <div class="team_box wow fadeInDown delay-03s">
          <div class="team_box_shadow"><a href="javascript:void(0)"></a></div>
          <img src="img/team_pic1.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-03s">Mohamed Elkourdy</h3>
        <span class="wow fadeInDown delay-03s">Director </span>
        <p class="wow fadeInDown delay-03s" style="text-align:left; font-size:13px;">Address: Egypt- cairo , elsalam city (spico) contract 16 the big mosque st.<br/>
Email : moamedelkourdy@gmail.com <br/>Whatsapp & Viber 0020106056500</p>
      </div>
      <div class="team_area">
        <div class="team_box  wow fadeInDown delay-06s">
          <div class="team_box_shadow"><a href="javascript:void(0)"></a></div>
          <img src="img/team_pic2.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-06s">Mohamed Elnagar </h3>
        <span class="wow fadeInDown delay-06s">Office Manager</span>
        <p class="wow fadeInDown delay-06s" style="text-align:left; font-size:13px;">Address : Egypt – Ismailia City – 14th Mohamed Ezz eldin st,<br/>
Email : mohammedelnagar82@gmail.com <br/>
Whatsapp & viber +201091081071 <br/>
Tel/fax +20643355800
</p>
      </div>
      <div class="team_area">
        <div class="team_box wow fadeInDown delay-09s">
          <div class="team_box_shadow"><a href="javascript:void(0)"></a></div>
          <img src="img/team_pic2.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-09s">Hazem sayed </h3>
        <span class="wow fadeInDown delay-09s">Office Manager</span>
        <p class="wow fadeInDown delay-09s" style="text-align:left; font-size:13px;">Address :Ukraine – Odessa region , Odessa city , vulica Marshal malinovsky 
  house 1/1
<br/>
Email: hazem05business@gmail.com <br/>
Mobile +380631761051 - Skype : hazemhazem2341<br/>
Whatsapp & viber 00201066638330

</p>
      </div>
    </div>
  </div>
</section>
    <!--/Team-->
    <!--Footer-->
    <footer class="footer_wrapper" id="contact">
  <div class="container">
    <section class="page_section contact" id="contact" style="padding: 50px 0px 93px;">
      <div class="contact_section">
        <h2><%=Translate("إتصل بنا")%></h2>
        <div class="row">
          <div class="col-lg-4">
            
          </div>
          <div class="col-lg-4">
           
          </div>
          <div class="col-lg-4">
          
          </div>
        </div>
      </div>
      <div class="row" style="margin-top: -80px;">
        <div class="col-lg-4 wow fadeInLeft" style="margin-top: -23px;">	
        <style>
        .contact_info p {
    line-height: 16px;
    display: block;
    font-size: 13px;
    color: #FFF;
    margin: 0px 0px 7px;
}

        </style>
		 <div class="contact_info">
                            <div class="detail">
                                <h4><%=Translate("TABBOUK")%></h4>
                                <p>Egypt- cairo , elsalam city (spico) contract 16 the big mosque st.</p>
                                <p>Egypt – Ismailia City – 14th Mohamed Ezz eldin st,</p>
                                <p>Ukraine – Odessa region , Odessa city , vulica Marshal malinovsky house 1/1</p>
                            </div>
                            <div class="detail">
                                <h4><%=Translate("Call Us") %></h4>
                                <p>Mr:Mohamed Elkourdy–Director (Whatsapp & Viber 0020106056500)</p>
                                <p>Mr:Mohamed Elnagar–Office Manager (Whatsapp & viber +201091081071 - Tel/fax +20643355800)</p>
                                <p>Mr:Hazem sayed Ukraine (Skype : hazemhazem2341 - Whatsapp & viber 00201066638330 - Mobile - +380631761051)</p>
                            </div>
                            <div class="detail">
                                <h4><%=Translate("E-mail Us") %></h4>
                                <p>Mr:Mohamed Elkourdy–Director (moamedelkourdy@gmail.com)</p>
                                <p>Mr:Mohamed Elnagar–Office Manager (mohammedelnagar82@gmail.com)</p>
                                <p>Mr:Hazem sayed Ukraine (hazem05business@gmail.com)</p>
                            </div> 
                        </div>
       		  
			  
          
          <ul class="social_links">
            <li class="twitter animated bounceIn wow delay-02s"><a href="javascript:void(0)"><i class="fa fa-twitter"></i></a></li>
            <li class="facebook animated bounceIn wow delay-03s"><a href="javascript:void(0)"><i class="fa fa-facebook"></i></a></li>
            <li class="pinterest animated bounceIn wow delay-04s"><a href="javascript:void(0)"><i class="fa fa-pinterest"></i></a></li>
            <li class="gplus animated bounceIn wow delay-05s"><a href="javascript:void(0)"><i class="fa fa-google-plus"></i></a></li> 
          </ul>
        </div>
      
        <div class="col-lg-8 wow fadeInLeft delay-06s">
          <div class="form">
            <input class="input-text" type="text" name="" value="<%=Translate("Your Name") %>" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;">
            <input class="input-text" type="text" name="" value="<%=Translate("Your E-mail")%>" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;">
            <textarea class="input-text text-area" cols="0" rows="0" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;"><%=Translate("Your Message")%></textarea>
            <input class="input-btn" type="submit" value="<%=Translate("Send Message") %>">
          </div>
        </div>
      </div>
    </section>
  </div>
  
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Tabbouk.css.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    
</asp:Content>

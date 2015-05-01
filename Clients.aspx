<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="Tabbouk.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

</asp:Content>

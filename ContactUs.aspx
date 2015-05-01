<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Tabbouk.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
  </footer>
</asp:Content>

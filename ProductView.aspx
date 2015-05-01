<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Tabbouk.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE HTML>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flatro Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/styleview.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<script src="js/jquery.easydropdown.js"></script>
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>    $(document).ready(function () { $(".megamenu").megamenu(); });</script>

<!--initiate accordion-->
<script type="text/javascript">
    $(function () {

        var menu_ul = $('.menu_drop > li > ul'),
	           menu_a = $('.menu_drop > li > a');

        menu_ul.hide();

        menu_a.click(function (e) {
            e.preventDefault();
            if (!$(this).hasClass('active')) {
                menu_a.removeClass('active');
                menu_ul.filter(':visible').slideUp('normal');
                $(this).addClass('active').next().stop(true, true).slideDown('normal');
            } else {
                $(this).removeClass('active');
                $(this).next().stop(true, true).slideUp('normal');
            }
        });

    });
</script>
<script>    $(document).ready(function (c) {
        $('.alert-close').on('click', function (c) {
            $('.message').fadeOut('slow', function (c) {
                $('.message').remove();
            });
        });
    });
</script>
<script>    $(document).ready(function (c) {
        $('.alert-close1').on('click', function (c) {
            $('.message1').fadeOut('slow', function (c) {
                $('.message1').remove();
            });
        });
    });
</script>
</head>
<body>

  <div class="section-title">
  
    <h2><%=Translate("منتج")%></h2>
    </div>
 <% 
          int id;
          if (Session["langId"].ToString() == "EN")
             id = 1;
          else if (Session["langId"].ToString() == "RO")
              id=3;
          else
              id=2;
        int pid = int.Parse(Request.QueryString["PID"].ToString());
        int langid = int.Parse(Request.QueryString["LangID"].ToString());
        System.Data.DataTable dt = Tabbouk.Commons.returnDTWith2Parameter("SP_Product_One", "ProductID", pid,"LangID", id);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            %>
        
<div class="single_top">
	 <div class="container"> 
	      <div class="single_grid">
				<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									
									<img class="etalage_source_image" src="<%=dt.Rows[i]["Image"].ToString() %>" class="img-responsive" title="" />
								</a>
							</li>
							
						</ul>
						 <div class="clearfix"></div>		
				  </div> 
				  <div class="desc1 span_3_of_2">
				  	
					<h1><%=dt.Rows[i]["ProductName"].ToString()%> - <%=dt.Rows[i]["CatName"].ToString()%></h1>
					<ul class="price_single">
					  <li class="head"><h2><%=dt.Rows[i]["UnitPrice"].ToString()%></h2></li>
					  
					  <div class="clearfix"></div>
					</ul>
					<p><%=dt.Rows[i]["Description"].ToString()%> </p>
				     <div class="dropdown_top">
				     
						 <div class="clearfix"></div>
			         </div>
                     <%=dt.Rows[i]["ProductID"].ToString()%>
			         <a href="#" class="btn1 btn2 btn-primary1"><span><%=Translate("Send Message") %></span></a>
				</div>
          	    <div class="clearfix"></div>
          	   </div>
          	 
		
   </div>
   </div>

</body>
</html>		

        
           <%} %>
</asp:Content>

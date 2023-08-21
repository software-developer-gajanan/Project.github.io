<%-- 
    Document   : cleaning
    Created on : Jun 11, 2023, 9:31:11 AM
    Author     : kalkundregaju
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Cleaning</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Fast Service a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
</head>
<body>
<header>
	<!-- header -->
	<div class="header-w3l">
	
<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="index.html">Home Service</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav ml-auto">
      <li class="nav-item ">
        <a class="nav-link" href="home_page.jsp">Home </a>
      </li>
    
	  <li class="nav-item">
        <a class="nav-link" href="service.jsp">Services</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="contact_page.jsp">Contact</a>
      </li>



    </ul>
 
</nav>

	<!-- //header -->

	<!-- banner -->
	<!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider1">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider1-img">
							<div class="slider_banner_info">
							
								
							</div>
						</div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
</div>
</header>


<section class="services  py-lg-5 py-md-4 py-md-3 py-2" id="services">
<!-- About Us -->
<div class="services py-lg-5 py-md-4 py-md-3 py-2" id="services">
<div class="container">
<h3 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Choose Cleaning Service</h3>

</div>

<div class="bannerbottom py-lg-5 py-md-4 py-md-3 py-2">
<div class="container">
<div class="row">

    <%
                Connection cn=null;
                Statement st=null;
                
try
{
    Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/home","root","root");
            st=cn.createStatement();
            String sql="select * from add_services where category_nm='Cleaning'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
         
            %>
             
                <div class="col-md-4 col-sm-12 w3_ban1">
<div class="card" >
    <form action="booking.jsp" method="post">
  <img class="card-img-top" src="<%=rs.getString("add_profile")%>" alt="Card image cap">
  <div class="card-body">
    <h4><%=rs.getString("v_nm")%></h4>
      <br>
    <p class="card-text"><B>Working Area - </B><%=rs.getString("c_select")%> </p>

    <p class="card-text">Price:<%=rs.getString("price")%></p><br>
   <input type="hidden" value="<%=rs.getString("price")%>" name="price">
    <input type="hidden" value="Cleaning" name="cook" >
    <input type="hidden" value="<%=rs.getString("v_nm")%>" name="v_nm" >
    <input type="hidden" value="<%=rs.getString("email")%>" name="email" >
    <input type="submit" class="btn btn-success" value="Book Now">
  </div>
         
</div>
    
</div>
</form>

<%
                 }
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            %>
</div>
</div>
</div>

</section>




<!-- Footer-->
<section class="footer">
<div class="container">
<h3>Home Service</h3>
     <div class="wrapper">
<ul class="social-icons icon-circle icon-zoom list-unstyled list-inline"> 
<li> <a href="#"><i class="fab fa-facebook-f"></i></a></li> 
<li> <a href="#"><i class="fab fa-twitter"></i></a></li> 
<li> <a href="#"><i class="fab fa-linkedin-in"></i></a></li>
</ul>
</div>
<div class="copyright">
			<p>© 2023 Home Service. All Rights Reserved | Design by Gajanan kalkundre<br>Prathamesh Redekar</p>
			
		</div>
	</div>
</section>
<!-- /Footer-->
   

<script  src="js/jquery.min.v3.js"></script>
<script  src="js/bootstrap.min.js"></script>
<script  src="js/move-top.js"></script>
<script  src="js/easing.js"></script>
<script  src="js/SmoothScroll.min.js"></script>	

	<!-- banner Slider -->
	
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>

   <!-- sign in and signup pop up toggle script -->
    <script>
        $('.toggle').click(function () {
            // Switches the Icon
            $(this).children('i').toggleClass('fa-pencil');
            // Switches the forms  
            $('.form').animate({
                height: "toggle",
                'padding-top': 'toggle',
                'padding-bottom': 'toggle',
                opacity: "toggle"
            }, "slow");
        });
    </script>
    <!-- sign in and signup pop up toggle script -->
	
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<script type="text/javascript">
	$(function () {
  $('[data-toggle="popover"]').popover()
})
</script> 
<!-- //scrolling script -->
<!--//start-smoth-scrolling -->

</body>
</html>

 <%-- 
    Document   : admin_navbar
    Created on : Jun 14, 2023, 8:24:46 AM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
   <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    <title>Admin</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <h3 class="navbar-brand" href="#">Home Service</h3>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="booking_list.jsp" style="padding-left: 60px;">Booking</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="contact_page_list.jsp" style="padding-left: 20px;">Contact</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="online_pay_list.jsp" style="padding-left: 20px;">Online Payment</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="admin_cardpay_list.jsp" style="padding-left: 20px;">UPI Payment</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="user_feedback_list.jsp" style="padding-left: 20px;">User Feedback</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="vendor_feedback_list.jsp" style="padding-left: 20px;">Vendor Feedback</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="add_service_list.jsp" style="padding-left: 20px;">Added Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="index.html" style="padding-left: 20px;">Logout</a>
      </li>
     
       <li class="nav-item">
        <a class="nav-link " href="admin_register.jsp" style="padding-left: 100px;">Add New Admin</a>
      </li>
      
    </ul>
   
  </div>
</nav>
  </body>
</html>

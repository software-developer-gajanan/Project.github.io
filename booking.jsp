<%-- 
    Document   : booking
    Created on : May 1, 2023, 9:33:00 AM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>booking</title>
          <link rel="stylesheet" href="bootstrap.min.css">
                <script src="validation.js"></script>
            <style>
            .container{
                margin-bottom: 20px;
               
            }
            .body{
               background-image:url("images/login.jpg");
            .form{
                border-radius: 20px;
                padding: 20px;
                background-color: white;
                margin-top: 50px;
                border: solid;
            }
            .input[type=submit]{
               align-items: flex-end;
            }
        </style>
    </head>
    <body class="body">
      <div class="container">
        <div class="row">
            <div class="col-sm-3">
                </div>
           
           
        
                <div class="col-sm-6">
                    
                     <form class="form" action="booking" method="post">  
                             <a href="service.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
            <h3 align="center">Booking</h3>
            
            <input type="hidden" name="vemail" value="<%=request.getParameter("email")%>">
          
            <label>Name<label style="color:red;">*</label></label>
        
        <input type="text" name="user_name" placeholder="Enter your name" class="form-control" onkeypress="Javascript:return isString(event)" required>
        <br>
                <label>Contact Number<label style="color:red;">*</label></label>
                <input type="text"  name="c_no" placeholder="Enter contact no" class="form-control"  onkeypress="Javascript:return isNumber(event)" maxlength="10" minlength="10" required>
        
         <br>
          
            <label> Address<label style="color:red;">*</label></label>
            <br>
            <textarea name="address" placeholder="Enter address"  rows="2" class="form-control" ></textarea>
           
            <br>
            <label>Email<label style="color:red;">*</label></label>
            <input type="email" name="email"  placeholder="Enter email" class="form-control" required> <br>
            <div class="row">
                <div class="col-sm-6">
            <label>Date From<label style="color:red;">*</label></label>
            <input type="date" name="b_date" placeholder="" class="form-control" required>
                </div>
                <div class="col-sm-6">
                   <label>To</label>
            <input type="date" name="l_date" placeholder="" class="form-control" required>
                </div>
            </div>
             <br>
            
              <label>Vendor Name</label>
              <input type="text" name="v_name" value="<%=request.getParameter("v_nm")%>" placeholder="Enter vendor name" class="form-control" required readonly="" required>
                
              
            <br>
            <label>Category Name</label>
              <input type="text" name="category_nm" value="<%=request.getParameter("cook")%>" placeholder="Enter vendor name" class="form-control" required readonly="" required>
                
              
            <br>
            <label>Price</label>
            <input type="text"  name="u_price" placeholder="" class="form-control" value="<%=request.getParameter("price")%>" required readonly="" onkeypress="Javascript:return isNumber(event)" required>
            <br>
           
            <div class="row">
                <div class="col-sm-6">
            <input type="submit" value="Cancle" class="btn btn-danger input form-control" style="" >
                </div>
                <div class="col-sm-6">
        <input type="submit" value="Book Now" name="btn" class="btn btn-primary form-control" style="">
                </div>
            </div>
               
  
    </form>
</div>          
       
           <div class="col-sm-3">
            </div>  
        </div>
            </div>
            
    </body>
</html>

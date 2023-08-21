<%-- 
    Document   : Add Service
    Created on : Apr 28, 2023, 10:24:55 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Add service</title>
           <link rel="stylesheet" href="bootstrap.min.css">
             <script src="validation.js"></script>
          <style>
            .container{
                margin-bottom: 20px;
               
            }
            .body{
               background-image:url("images/login.jpg");
            }
            .form{
                border-radius: 20px;
                padding: 20px;
                background-color: white;
                margin-top: 50px;
                border: solid;
            }
            
        </style>
    </head>
    <body class="body">
       <div class="container">
        <div class="row">
            <div class="col-sm-2">
                </div>
                <div class="col-sm-8">
                    
<form class="form" action="add_services" method="post"> 
                         
                         <a href="vendor_home_page.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
            <h5 align="center">Add Services</h5>
            
            <br>
            <div class="row">
                <div class="col-sm-6">
            <label>Vendor Name<label style="color:red;">*</label></label>
        
        <input type="text" name="v_nm" placeholder="Enter vendor name" class="form-control" onkeypress="Javascript:return isString(event)" required>
           
            <br>
            <label>Contact<label style="color:red;">*</label></label>
        
        <input type="text" name="c_no" placeholder="Enter contact number" class="form-control" onkeypress="Javascript:return isNumber(event)" maxlength="10" minlength="10" required >
               <br> <label> Address<label style="color:red;">*</label></label>
            <br>
            <textarea name="address" placeholder="Enter address"  rows="2" class="form-control"  required></textarea>
            <br>
            
    
         <label>Add price<label style="color:red;">*</label></label>
            <input type="text" name="price" placeholder="Enter price" class="form-control" onkeypress="Javascript:return isNumber(event)" required="*">
        <br>
      
        <input type="submit" value="Cancle" name="btn" class="btn btn-danger" style="float:right;">
        </div>
      
        <div class="col-sm-6">
            <label>Email<label style="color:red;">*</label></label>
            <input type="email" name="email" placeholder="Enter email" class="form-control" required>
            <br>
            <div class="row">
                <div class="col-sm-6">
              <label>Category name<label style="color:red;">*</label></label>
   
              <select class="form-control" name="category_nm" required>
            <option> Select</option>
                <option>Cooking</option>
                <option>Cleaning</option>
                <option>Plumbing</option>
                <option>Gardening</option>
                <option>Driving</option>
                 <option>Painting</option>
        </select>
            
              
                </div>
                <div class="col-sm-6">
        <label>Select Area<label style="color:red;">*</label></label>
        <select class="form-control" name="c_select">
            <option> Select</option>
               <option>Gadhinglaj</option>
                  <option>Nesari</option>
                  <option>Chandgad</option>
                  <option>Kolhapur</option>
                  <option>Ajara</option>
                  
        </select>
       
                </div>
            </div><br>
             <label>Office Address</label>
              <textarea type="" name="office_add" placeholder="Enter office address" class="form-control" ></textarea>
    <br>
      <label>Add profile image<label style="color:red;">*</label></label>
       <input type="file" name="add_profile"  placeholder="Add " class="form-control" required>
       <br>
       <input type="submit" value="Add" class="btn btn-info" name="btn" style="float:left;">
        </div>      
    
     
   </form> 
    </div>                
</div>          
        <div class="col-sm-2">
            </div>  
        
        </div>
            </div>
        
    </body>
</html>

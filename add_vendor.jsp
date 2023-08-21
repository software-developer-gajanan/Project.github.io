<%-- 
    Document   : add_vendor
    Created on : May 31, 2023, 12:21:46 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Add vendor</title>
           <link rel="stylesheet" href="bootstrap.min.css">
             <script src="validation.js"></script>
          <style>
            .container{
                margin-bottom: 20px;
               
            }
            .body{
                background: linear-gradient(to left, #6699ff 0%, #ff99cc 100%);
            }
            .form{
                border-radius: 20px;
                padding: 20px;
                background-color: white;
                margin-top: 50px;
            }
            
        </style>
    </head>
    <body class="body">
       <div class="container">
        <div class="row">
            <div class="col-sm-2">
                </div>
                <div class="col-sm-8">
                    
<form class="form" action="add_vendor" method="post"> 
                         <h5 align="right" style="color:black;">X</h5>
            <h5 align="center">Add vendor</h5>
            
            <br>
            <div class="row">
                <div class="col-sm-6">
            <label>Vendor Name</label>
        
        <input type="text" name="v_nm" placeholder="Enter vendor name" class="form-control" onkeypress="Javascript:return isString(event)" required>
           
            <br>
            <label>Contact</label>
        
        <input type="text" name="c_no" placeholder="Enter contact number" class="form-control" onkeypress="Javascript:return isNumber(event)" maxlength="10" minlength="10" required >
               <br> 
                <label>Office Contact</label>
        
        <input type="text" name="oc_no" placeholder="Enter office contact number" class="form-control" onkeypress="Javascript:return isNumber(event)" maxlength="10" minlength="10" required >
        <br><label> Address</label>
            <br>
            <textarea name="address" placeholder="Enter address"  rows="2" class="form-control"  required></textarea>
            <br>
            
    
         
      
        <input type="submit" value="cancle" name="btn" class="btn btn-danger" style="float:right;">
        </div>
      
        <div class="col-sm-6">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter email" class="form-control" required>
            <br>
            <div class="row">
                <div class="col-sm-6">
              <label>Select Category</label>
   <br>
              <br>
            <p><input type="checkbox" name="category" value="cooking"/>cooking</p>
  <p><input type="checkbox" name="category" value="Cleaning"/>Cleaning</p>
 <p><input type="checkbox" name="category" value="Gardening"/>Gardening</p>
            
              
                </div>
                <div class="col-sm-6">
        <br><br>
  <p><input type="checkbox" name="category" value="Driving"/>Driving</p>
  <p><input type="checkbox" name="category" value="Plumbing"/>Plumbing</p>
       
                </div>
            </div><br>
            
      <label>Add profile image</label>
       <input type="file" name="add_profile"  placeholder="add" class="form-control" required>
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


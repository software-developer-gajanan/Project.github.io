<%-- 
    Document   : change_paswd
    Created on : May 18, 2023, 8:36:18 PM
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
            <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    
                    <form class="form" action="add_services" method="post"> 
                         <h5 align="right" style="color:black;">X</h5>
            <h5 align="center">Add Services</h5>
            
            <br>
            
            <label>Email Id</label>
        
<input type="Email" name=" Username" placeholder="Email" class="form-control" required="">           
            <br>
            <label> Old Password</label>
            <br>
                <input type="password" name=" Username" placeholder="Old Password" minlength="8" maxlength="8" class="form-control" required="">
            <br>
            <label>New Password</label>
        <input type="password" name=" Username" placeholder=" New Password" minlength="8" maxlength="8" class="form-control" required="">
        <br>
         <label>Confirm Password</label>
	<input type="password" name=" Username" placeholder=" Confirm Password" minlength="8" maxlength="8" class="form-control" required=""><br>
        <br>
        <br>
         <div class="row">
			     <div class="col-sm-6">
			     	<input type="submit" value="Save" class="btn btn-primary form-control">
			     </div>
			     <div class="col-sm-6">
			     	<input type="submit" value="Cancle" class="btn btn-danger form-control">
			     </div>
			    </div>
        </div>
      
       
        </div>      
    
     
   </form> 
    </div>                
</div>          
        <div class="col-sm-4">
            </div>  
        
   
            
    </body>
</html>

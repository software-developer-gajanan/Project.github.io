<%-- 
    Document   : vendor_login
    Created on : Apr 27, 2023, 9:40:36 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="bootstrap.min.css">
        <title>vendor login</title>
              <script src="validation.js"></script>
        <style>
            .container{
                background-color: white;
                padding: 20px;
                margin-top: 100px;
                border-radius: 20px;
                border: solid;
                
            }
            .body{
           
               background-image:url("images/login.jpg");
            }
        </style>
    </head>
    <body class="body">
        <form action="vendor_login" method="post">
        <div class="row">
            <div class="col-sm-4">
                 </div>
                <div class="col-sm-4 container">
                         <a href="index.html" style="float:right;" class="btn btn-outline-danger">X</a>
                    <h4 align="center">Vendor Login</h4>
                    
              
       
    <label>Username</label>
    
            <input type="email" name="u_name" placeholder="Enter username" class="form-control" required>
            <br>
             <label>Password</label>
             <input type="password" name="pswd"  placeholder="Enter password" class="form-control" required minlength="6" maxlength="8" >
             <br>
             <input type="submit" value="Login" name="btn" class="btn btn-primary form-control"><br><br>
                            <a href="vendor_register.jsp"align="right">Create new account</a>
                           
                  </div>
                 
           
            <div class="col-sm-4">
                
            </div>
               

              </div>
            </form>
    </body>
</html>

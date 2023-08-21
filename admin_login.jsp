<%-- 
    Document   : admin_login
    Created on : Apr 26, 2023, 8:39:54 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Admin login</title>
         <link rel="stylesheet" href="bootstrap.min.css">
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
        <form action="admin_login" method="post">
        <div class="row">
            <div class="col-sm-4">
                 </div>
                <div class="col-sm-4 container">
                         <a href="index.html" style="float:right;" class="btn btn-outline-danger">X</a>
                    <h3 align="center">Admin Login</h3>
                    
              
       
    <label>Username</label>
    
            <input type="email" name="email" placeholder="Enter username" class="form-control" >
            <br>
             <label>Password</label>
             <input type="password" name="pswd" class="form-control" placeholder="Enter password" required minlength="6" maxlength="8" >
             <br>
             <input type="submit" name="btn" class="btn btn-primary form-control" value="Login"><br><br>
                                         

                         
                  </div>
                 
           
            <div class="col-sm-4">
                
            </div>
               

              </div>
            </form>
    </body>
</html>

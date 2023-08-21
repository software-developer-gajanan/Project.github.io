<%-- 
    Document   : user_login
    Created on : Apr 25, 2023, 12:31:49 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="validation.js">
        <script src="https://kit.fontawesome.com/ebd051faf8.js" crossorigin="anonymous"></script>
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
        <form action="user_login" method="post">
        <div class="row">
            <div class="col-sm-4">
                 </div>
                <div class="col-sm-4 container">
                         <a href="index.html" style="float:right;" class="btn btn-outline-danger">X</a>
                    <h3 align="center">User Login</h3>
                    
              
       
    <label>Username</label>
    
    <input type="email" name="email" placeholder="Enter Username" class="form-control" required >
            <br>
      <label>Password</label>
          <input type="password" name="pswd" class="form-control" placeholder="Enter password" required minlength="6" maxlength="8">
             <br>
             <input type="submit" name="btn" value="Login" class="btn btn-primary form-control"><br><br>
                            <a href="user_register.jsp"align="right">Create New</a>
                  </div>
      <div class="col-sm-4">
                
            </div>
           
              </div>

            </form>
    </body>
</html>

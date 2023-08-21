<%-- 
    Document   : admin_register
    Created on : Jun 4, 2023, 7:33:06 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="bootstrap.min.css">

        <script src="validation.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin register</title>
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
            <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    
                    <form class="form" action="admin_register" method="post">  
                          <a href="contact_page_list.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
            <h3 align="center">Admin Register</h3>
            <br>
            <br>
            
            
            <label>Username</label>
        
            <input type="email" name="nm" placeholder="Enter username" class="form-control" required>
            
           
            <br>
          
            <div class="row">
                <div class="col-sm-6">
              <label>Password</label>
                <input type="password" name="pswd"  placeholder="Enter password" class="form-control"required minlength="6" maxlength="8" >
                </div>
                <div class="col-sm-6">
        <label>Confirm password</label>
        <input type="password" name="cpswd" placeholder="Enter password" class="form-control" required minlength="6" maxlength="8" >
                </div>
            </div><br>

        <input type="submit" value="Submit" name="btn" class="btn btn-primary form-control" >
      
               
  
    </form>
</div>          
        <div class="col-sm-4">
            </div>  
        
        </div>
            </div>
    </body>
</html>

<%-- 
    Document   : user_register
    Created on : May 10, 2023, 10:00:16 AM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User register</title>
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
            <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    
                    <form class="form" action="user_register" method="post">  
                         <a href="user_login.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
            <h3 align="center">User Register</h3>
            <br>
      
            <div class="row">
            <div class="col-sm-6">
            <label>First Name</label>
        
            <input type="text" name="first_nm" placeholder="Enter first name" class="form-control" onkeypress="Javascript:return isString(event)" required>
            </div>
            <div class="col-sm-6">
                <label>Last Name</label>
                <input type="text" name="lst_nm" placeholder="Enter last name" class="form-control" onkeypress="Javascript:return isString(event)" required>
            </div>
            </div>
            <br>
            <label> Address</label>
            <br>
            <textarea name="address" placeholder="Enter address"  rows="2" required class="form-control" ></textarea>
            <br>
           
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter email" class="form-control" required >
            <br>
            <div class="row">
                <div class="col-sm-6">
              <label>Password</label>
                <input type="password" name="pswd" placeholder="Enter password" class="form-control"required minlength="6" maxlength="8" >
                </div>
                <div class="col-sm-6">
        <label>Confirm password</label>
        <input type="password" name="cpswd" placeholder="Enter confirm password" class="form-control" required minlength="6" maxlength="8" >
                </div>
            </div><br>

        <input type="submit" value="Submit" name="btn" class="btn btn-primary form-control" >
        <br><br>
          <a href="user_login.jsp">I have already account</a>
              <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
   
    $(function () {
        $("#Submit").click(function () {
            var pswd = $("#pswd").val();
            var cpswd = $("#cpswd").val();
            if (pswd != cpswd) {
                alert("Passwords do not match.");
                return false;
            }else{
            return true;
        });
    });
</script>
    </form>
</div>          
        <div class="col-sm-4">
            </div>  
        
        </div>
            </div>
    </body>
</html>

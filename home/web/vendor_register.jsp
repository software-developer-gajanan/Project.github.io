<%-- 
    Document   : vendor register
    Created on : Apr 27, 2023, 9:23:43 PM
    Author     : kalkundregaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <link rel="stylesheet" href="bootstrap.min.css">
        <title>vendor register</title>
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
                    
                    <form class="form"action="vendor_register" method="post">  
                              <a href="vendor_login.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
            <h5 align="center">Vendor Register</h5>
            
            <br>
            <div class="row">
            <div class="col-sm-6">
            <label>First Name</label>
        
        <input type="text" name="f_nm" placeholder="Enter first name" class="form-control"  onkeypress="Javascript:return isString(event)" required>
            </div>
            <div class="col-sm-6">
                <label>Last Name</label>
                <input type="text" name="l_nm" placeholder="Enter last name" class="form-control"  onkeypress="Javascript:return isString(event)" required>
            </div>
            </div>
            <br>
            <label> Address</label>
            <br>
            <textarea name="address" placeholder="Enter address"  rows="2" class="form-control" required ></textarea>
            <br>
           
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter email" class="form-control" required >
            <br>
            <div class="row">
                <div class="col-sm-6">
              <label>Password</label>
              <input type="password" name="pswd" placeholder="Enter password" class="form-control" required minlength="6" maxlength="8" >
                </div>
                <div class="col-sm-6">
        <label>Confirm password</label>
        <input type="password" name="c_pswd" class="form-control" placeholder="Enter password" required minlength="6" maxlength="8" >
                </div>
            </div><br>

            <input type="submit" value="submit" name="btn" class="btn btn-info form-control" ><br><br>
            <a href="vendor_login.jsp">I have already account</a>
               
  
    </form>
</div>          
        <div class="col-sm-4">
            </div>  
        
        </div>
            </div>
    
   
<script type="text/javascript">
    $(function () {
        $("#submit").click(function () {
            var pswd = $("#pswd").val();
            var c_pswd = $("#c_pswd").val();
            if (pswd != c_pswd) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
   
        </script>
    </body>
    
</html>

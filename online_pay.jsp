<%-- 
    Document   : online_pay
    Created on : May 8, 2023, 6:06:13 PM
    Author     : kalkundregaju
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Payment</title>
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
           
                background-image:url("images/login2.jpg");
            }
          
         </style>
    </head>
    <body class="body">
        <form action="online_pay" method="post">
        <div class="row">
            <div class="col-sm-4">
                 </div>
                <div class="col-sm-4 container">
                        <%
                Connection cn=null;
                Statement st=null;
                
try
{
    Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/home","root","root");
            st=cn.createStatement();
            String sql="select * from booking where email='"+session.getAttribute("email")+"'";
            ResultSet rs=st.executeQuery(sql);
           
  while(rs.next())
            {
                

            
            %>
                    <a href="bill_page.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
                    <h3 align="center">Online Payment</h3>
                    
              
       
    <label>UPI ID</label>
    
    <input type="text" name="upi" placeholder="Enter UPI" maxlength="10" minlength="10" required class="form-control" onkeypress="Javascript:return isNumber(event)" >
            <br>
             <label>Amount</label>
              <input type="text"  name="amt" placeholder="" class="form-control" value="<%=rs.getString("u_price")%>" required readonly="" onkeypress="Javascript:return isNumber(event)" required>

             <br>
             <input type="submit" value="Pay" name="btn" class="btn btn-primary form-control">
               <%
    }                 
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            %>
                         
                  </div>
                 
            
            <div class="col-sm-4">
                
            </div>
               

              </div>
            </form>
    </body>
</html>

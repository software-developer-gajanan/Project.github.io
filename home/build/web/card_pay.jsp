<%-- 
    Document   : card_pay
    Created on : May 8, 2023, 5:47:40 PM
    Author     : kalkundregaju
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Card Payment</title>
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
        <form action="card_pay" method="post">
        <div class="row">
            <div class="col-sm-4">
                 </div>
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
                <div class="col-sm-4 container">
                         <a href="bill_page.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
                    <h3 align="center">CARD PAYMENT</h3>
                    
                    <form action="booking.jsp" method="post">
       
    <label>CARD HOLDER NAME</label>
    
            <input type="text" name="ch_name" placeholder="Enter card holder name" class="form-control" onkeypress="Javascript:return isString(event)" required>
            <br>
            <div class="row">
                <div class="col-sm-6">
                   
    <label>CARD NUMBER</label>
    
    <input type="text" name="c_no" placeholder="Enter card number" class="form-control" required onkeypress="Javascript:return isNumber(event)" maxlength="16" minlength="16" >
            
             </div>
                <div class="col-sm-6">
                    <label>CVV</label>
    
                    <input type="text" name="cvv" placeholder="cvv" class="form-control" required onkeypress="Javascript:return isNumber(event)" maxlength="3" minlength="3" >
                </div>
            </div> 
             <label>Exp. Date</label>
    
            <input type="date" name="exp_date" placeholder="Enter Exp. date" class="form-control" onkeypress="Javascript:return isNumber(event)" required>
            <br>
               
            
              <label>AMOUNT</label>
 <input type="text"  name="amt" placeholder="" class="form-control" value="<%=rs.getString("u_price")%>" required readonly="" onkeypress="Javascript:return isNumber(event)" required>
            
            
            <br>
        
                            <input type="submit" value="Pay" name="btn" class="btn btn-primary form-control">
                      </form>   
                  </div>
                 <%
    }                 
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            %>
           
            <div class="col-sm-4">
                
            </div> 
              </div>
            <BR>
            </form>
    </body>
</html>

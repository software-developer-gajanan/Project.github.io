<%-- 
    Document   : v_booking_list
    Created on : Jun 18, 2023, 10:18:21 PM
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
        <link rel="stylesheet" href="bootstrap.min.css">
        <title>add_services table</title>
            <style type="text/css">
    body{
    margin-top:20px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}


  </style>

    </head>
    <body class="card"><br><br
        <div class="container ">
            <h4 align="center">Bookings</h4><hr>
            <br>
     <table class="table table-striped "> 
  <thead>
    <tr>
      <th scope="col">Sr.No.</th>
      <th scope="col"> Name</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
      <th scope="col">Date Form</th>
      <th scope="col">Date To</th>
   
 

 
      
    </tr>
  </thead>
  <tbody >
  <%
          
     Connection cn=null;
    Statement st=null;
    
    int counter=1;
          
      try
      {
          Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/home","root","root");
            st=cn.createStatement();
            String sql="select * from booking where vemail='"+session.getAttribute("email")+"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
       
      %>
    <tr>
   <form action="booking" method="post">
   <th scope="row"><%=counter++%></th>
  
        <input type="hidden" name="id" value="<%=rs.getString("id")%>">
  
        <td><%=rs.getString("user_name")%></td>
           
           <td><%=rs.getString("c_no")%></td>
       <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("email")%></td>
         <td><%=rs.getString("b_date")%></td>
     
       
     
       <td><%=rs.getString("l_date")%></td>
   
      
        
      

   </form> 
    </tr>
    
    <% 
        }
    
    }catch(Exception ex)
{

out.println(ex.toString());
}
    
    
    %>
    
  </tbody>
</table>
            </div>
    </body>
</html>
<%-- 
    Document   : add_service_list
    Created on : May 20, 2023, 7:06:28 PM
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
  <%@include file="admin_navbar.jsp"%>
    </head>
    <body class="card"><br><br
        <div class="container ">
            <h4>Add_service list</h4><hr>
            <br>
     <table class="table table-striped "> 
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Vendor Name</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
      <th scope="col">Category</th>
      <th scope="col">Area</th>
      <th scope="col">Office Address</th>
      <th scope="col">Profile Image</th>
      <th scope="col">Price</th>

      <th scope="col">Delete</th>
      
    </tr>
  </thead>
  <tbody ">
  <%
          
     Connection cn=null;
    Statement st=null;
    
    int counter=1;
          
      try
      {
          Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/home","root","root");
            st=cn.createStatement();
            String sql="select * from add_services";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
      
      
      
      %>
    <tr>
   <form action="add_services" method="post">
   <th scope="row"><%=counter++%></th>
  
        <input type="hidden" name="uid" value="<%=rs.getString("uid")%>">
  
        <td><%=rs.getString("v_nm")%></td>
           
           <td><%=rs.getString("c_no")%></td>
       <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("email")%></td>
         <td><%=rs.getString("category_nm")%></td>
     
       
     
       <td><%=rs.getString("c_select")%></td>
      <td><%=rs.getString("office_add")%></td>
       <td><%=rs.getString("add_profile")%></td>
         <td><%=rs.getString("price")%></td>

        
      
       <td><input type="submit" name="btn" value="Delete" class="btn btn-danger"></td>

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

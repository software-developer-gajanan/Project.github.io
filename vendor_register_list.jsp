<%-- 
    Document   : vendor_register_list
    Created on : May 21, 2023, 9:02:01 PM
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
        <title>Vendor register</title>
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
    <body>
        <div class="container card card-body">
            <h2>Vendor register</h2>
            <br>
            <hr>
     <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
   
 
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
      
    </tr>
  </thead>
  <tbody>
  <%
          
     Connection cn=null;
    Statement st=null;
    
    int counter=1;
          
      try
      {
          Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/home","root","root");
            st=cn.createStatement();
            String sql="select * from vendor_register";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
      
      
      
      %>
    <tr>
   <form action="vendor_register" method="post">
   <th scope="row"><%=counter++%></th>
  
   <input type="hidden" name="id" value="<%=rs.getString("id")%>" class="form-control">
  
       <td><input type="text" name="f_nm" value="<%=rs.getString("f_nm")%>" class="form-control"><input type="text" name="l_nm" value="<%=rs.getString("l_nm")%>" class="form-control">  </td>
          
       <td><input type="text" name="address" value="<%=rs.getString("address")%>" class="form-control"></td>
      <td><input type="text" name="email" value="<%=rs.getString("email")%>" class="form-control"></td>
 
     
  
     

        
         <td><input type="submit" name="btn" value="Update" class="btn btn-success form-control"></td>
       <td><input type="submit" name="btn" value="Delete" class="btn btn-danger form-control"></td>
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

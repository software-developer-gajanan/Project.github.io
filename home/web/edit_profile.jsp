<%-- 
    Document   : edit_profile
    Created on : Jun 11, 2023, 5:57:51 PM
    Author     : kalkundregaju
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
         <link rel="stylesheet" href="bootstrap.min.css">
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

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}
  </style>
    </head>
    <body>
        <div class="container">
              <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
               <li class="nav-item ">
                   <a class="nav-link" href="vendor_home_page.jsp"> <b>Home</b> </a>
      </li>
            
       <li class="nav-item ">
                   <a class="nav-link" href="V_profile.jsp" style="padding-left:40px;"> <b>Profile</b> </a>
      </li>
     </ol>
        
       
          </nav>
          <!-- /Breadcrumb -->
        <div class="card">
            
                <div class="card-body">
                 
            <h2>Update Your Profile</h2>

     <table class="table table-striped"> 
  <thead>
   
  
  
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
            String sql="select * from add_services where email='"+session.getAttribute("email")+"'";
            ResultSet rs=st.executeQuery(sql);
           
  if(rs.next())
            {
                

            
            %>
    <tr>
   <form action="add_services" method="post">
       <hr>
        <tr><th scope="col">#</th>
             <th scope="row"><%=counter++%></th>
  
        <input type="hidden" name="uid" value="<%=rs.getString("uid")%>">
      </tr>
      
     <tr> <th scope="col">Vendor Name</th>
         <td><input type="text" name="v_nm" value="<%=rs.getString("v_nm")%>"class="form-control" > </td> </tr>
     
     <tr> <th scope="col">Contact</th> 
      <td><input type="text" name="c_no" value="<%=rs.getString("c_no")%>"class="form-control"></td></tr>
     
     <tr> <th scope="col">Address</th>
     <td><input type="text" name="address" value="<%=rs.getString("address")%>"class="form-control"></td></tr>
     
     
    <tr>  <th scope="col">Email</th> 
    <td><input type="text" name="email" value="<%=rs.getString("email")%>"class="form-control"></td></tr>
    
    <tr>  <th scope="col">Category</th>
        <td><input type="text" name="category_nm" value="<%=rs.getString("category_nm")%>"class="form-control"></td>  </tr>
    
     <tr> <th scope="col">Selected Area</th> 
          <td><input type="text" name="c_select" value="<%=rs.getString("c_select")%>"class="form-control"></td>
        </tr>
        
     <tr> <th scope="col">Office Address</th>
         <td><input type="text" name="office_add" value="<%=rs.getString("office_add")%>" class="form-control"></td></tr>

       <tr> <th scope="col">Amount</th>
         <td><input type="text" name="price" value="<%=rs.getString("price")%>"class="form-control"></td></td></tr>
     <tr> 
      <td> </td>

    
     <td><input type="submit" style="margin-left:00px;" name="btn" value="Update" class="btn btn-success"></td> </tr>

 
        
      
     
   </form> 
   
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
            </div>
            </div>
    </body>
</html>

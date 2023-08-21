<%-- 
    Document   : user_feedback_admin
    Created on : Jun 15, 2023, 7:32:46 PM
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
        <title>User feedback</title>
       
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
        <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
               <li class="nav-item ">
                   <a class="nav-link" href="vendor_home_page.jsp" style="margin-left:130px;"> <b>Home</b> </a>
      </li>
     
            </ol>
          </nav>
          <!-- /Breadcrumb -->
        <br><br>
        <div class="container card card-body">
            <h4>feedback</h4><hr>
            <br>
     <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.No.</th>
      <th scope="col">User Id</th>
    
      <th scope="col">Suggestions</th>
 

     
      
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
            String sql="select * from user_feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
      %>
    <tr>
   <form action="user_feedback" method="post">
   <th scope="row"><%=counter++%></th>
  
         <input type="hidden" name="id" value="<%=rs.getString("id")%>">
  
         <td><%=rs.getString("email")%></td>
           <td><%=rs.getString("suggest")%></td>
      
  
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


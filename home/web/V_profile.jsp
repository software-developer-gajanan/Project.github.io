<%-- 
    Document   : V_profile
    Created on : Jun 9, 2023, 10:08:43 PM
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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Profile page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
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
    <div class="main-body">
    
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
               <li class="nav-item ">
                   <a class="nav-link" href="vendor_home_page.jsp"> <b>Home</b> </a>
      </li>
     
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
         

                <%
                Connection cn=null;
                Statement st=null;
                
try
{
    Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/home","root","root");
            st=cn.createStatement();
            String sql="select * from add_services where email='"+session.getAttribute("email")+"' ";
            ResultSet rs=st.executeQuery(sql);
           
  while(rs.next())
            {
                

            
            %>
            <form action="" method="post">
             <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                  
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="<%=rs.getString("add_profile")%>" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h6><%=rs.getString("v_nm")%></h6>
                      <p class="text-secondary mb-1"><%=rs.getString("category_nm")%></p>
                      <p class="text-muted font-size-sm">Working Area, <%=rs.getString("c_select")%></p>
                     
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <%=rs.getString("v_nm")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <%=rs.getString("email")%>
                    </div>
                  </div>
                  <hr>
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mobile</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString("c_no")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%=rs.getString("address")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Office Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <%=rs.getString("office_add")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-6">
                    
                    <a class="btn btn-info " target="__blank" href="edit_profile.jsp" >Edit</a>
                    </div>
                     <div class="col-sm-6">
                      <a class="btn btn-primary " target="__blank" href="V_profile.jsp">Save</a>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  
                </div>
              </div>



            </div>
              
          </div>
               </form> 
<%
    }                 
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            %>
        </div>
    </div>



 


   
</body>
</html>

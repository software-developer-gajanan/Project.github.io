<%-- 
    Document   : billdesk_page
    Created on : Jun 9, 2023, 9:27:46 PM
    Author     : kalkundregaju
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Card Bill page</title>
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
        <div class="container ">
    <div class="main-body">
    
         <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
               <li class="nav-item ">
                   <a class="nav-link" href="home_page.jsp"> <b>Home</b> </a>
      </li>
      <li class="nav-item ">
                   <a class="nav-link" href="bill_page.jsp" style="margin-left: 20px;"> <b>Payment</b> </a>
      </li>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              
              </div>
              
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
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
           
  if(rs.next())
            {
                

            
            %>
                <div class="card-body">
                    <form>
                         <a href="card_pay.jsp" style="float:right;" class="btn btn-outline-danger">X</a>
                    <h3 align="center" style="color:graytext;">Bill Details</h3><br>
                    <br>

                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bill ID</h6>
                    </div>
                      
                    <div class="col-sm-9 text-secondary">
                     <%=rs.getString("id")%>
                    </div>
                  </div>
                  <hr>
                    <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bill Date</h6>
                    </div>
                      
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString("b_date")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">User Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString("user_name")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Service Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString("category_nm")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bill Amount</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString("u_price")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bill Payment Mode</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Card pay
                    </div>
                  </div>
                  <hr>
                   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Status</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Payment Successfully
                    </div>
                  </div>
                  <hr>
                  <div class="col-sm-9 text-secondary">
                      
                        <div class="row">
                            
                          
                           <div class="col-sm-4"><a href="home_page.jsp" class="btn btn-primaryr">Back to Home</a></div>
                            
                        </div>
                        
                    </div>
                </form>
                  </div>
                <%
    }                 
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            %>
                  
                </div>
              </div>

              <div class="row gutters-sm">
                <div class="col-sm-3 mb-3">
                  
                </div>
              </div>



            </div>
          </div>

        </div>
    </div>
    </body>
</html>

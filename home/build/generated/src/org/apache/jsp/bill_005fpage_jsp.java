package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class bill_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <title>Bill page</title>\r\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("   <link rel=\"stylesheet\" href=\"bootstrap.min.css\">\r\n");
      out.write("  <style type=\"text/css\">\r\n");
      out.write("    body{\r\n");
      out.write("    margin-top:20px;\r\n");
      out.write("    color: #1a202c;\r\n");
      out.write("    text-align: left;\r\n");
      out.write("    background-color: #e2e8f0;    \r\n");
      out.write("}\r\n");
      out.write(".main-body {\r\n");
      out.write("    padding: 15px;\r\n");
      out.write("}\r\n");
      out.write(".card {\r\n");
      out.write("    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card {\r\n");
      out.write("    position: relative;\r\n");
      out.write("    display: flex;\r\n");
      out.write("    flex-direction: column;\r\n");
      out.write("    min-width: 0;\r\n");
      out.write("    word-wrap: break-word;\r\n");
      out.write("    background-color: #fff;\r\n");
      out.write("    background-clip: border-box;\r\n");
      out.write("    border: 0 solid rgba(0,0,0,.125);\r\n");
      out.write("    border-radius: .25rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-body {\r\n");
      out.write("    flex: 1 1 auto;\r\n");
      out.write("    min-height: 1px;\r\n");
      out.write("    padding: 1rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".gutters-sm {\r\n");
      out.write("    margin-right: -8px;\r\n");
      out.write("    margin-left: -8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".gutters-sm>.col, .gutters-sm>[class*=col-] {\r\n");
      out.write("    padding-right: 8px;\r\n");
      out.write("    padding-left: 8px;\r\n");
      out.write("}\r\n");
      out.write(".mb-3, .my-3 {\r\n");
      out.write("    margin-bottom: 1rem!important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".bg-gray-300 {\r\n");
      out.write("    background-color: #e2e8f0;\r\n");
      out.write("}\r\n");
      out.write(".h-100 {\r\n");
      out.write("    height: 100%!important;\r\n");
      out.write("}\r\n");
      out.write(".shadow-none {\r\n");
      out.write("    box-shadow: none!important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("  </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("    <div class=\"main-body\">\r\n");
      out.write("    \r\n");
      out.write("         <!-- Breadcrumb -->\r\n");
      out.write("          <nav aria-label=\"breadcrumb\" class=\"main-breadcrumb\">\r\n");
      out.write("            <ol class=\"breadcrumb\">\r\n");
      out.write("               <li class=\"nav-item \">\r\n");
      out.write("                   <a class=\"nav-link\" href=\"home_page.jsp\"> <b>Home</b> </a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item \">\r\n");
      out.write("                   <a class=\"nav-link\" href=\"booking.jsp\" style=\"margin-left: 20px;\"> <b>Book</b> </a>\r\n");
      out.write("      </li>\r\n");
      out.write("            </ol>\r\n");
      out.write("          </nav>\r\n");
      out.write("          <!-- /Breadcrumb -->\r\n");
      out.write("    \r\n");
      out.write("          <div class=\"row gutters-sm\">\r\n");
      out.write("            <div class=\"col-md-4 mb-3\">\r\n");
      out.write("              \r\n");
      out.write("              </div>\r\n");
      out.write("              \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-8\">\r\n");
      out.write("              <div class=\"card mb-3\">\r\n");
      out.write("  ");

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
                

            
            
      out.write("\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                    <form>\r\n");
      out.write("                         <a href=\"booking.jsp\" style=\"float:right;\" class=\"btn btn-outline-danger\">X</a>\r\n");
      out.write("                    <h3 align=\"center\" style=\"color:graytext;\">Booking Service Card</h3><br>\r\n");
      out.write("                    <br>\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                      <h6 class=\"mb-0\">Booking Person Name</h6>\r\n");
      out.write("                    </div>\r\n");
      out.write("                      \r\n");
      out.write("                    <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                      ");
      out.print(rs.getString("user_name"));
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <hr>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                      <h6 class=\"mb-0\">Vendor / Maid Name</h6>\r\n");
      out.write("                    </div>\r\n");
      out.write("                      \r\n");
      out.write("                    <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                       ");
      out.print(rs.getString("v_name"));
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <hr>\r\n");
      out.write("                  <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                      <h6 class=\"mb-0\">Contact</h6>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                      ");
      out.print(rs.getString("c_no"));
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <hr>\r\n");
      out.write("                  <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                      <h6 class=\"mb-0\">Date</h6>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                        <div class=\"row\"> \r\n");
      out.write("                            From<div class=\"col-sm-4\"> ");
      out.print(rs.getString("b_date"));
      out.write("</div>\r\n");
      out.write("                            To<div class=\"col-sm-4\"> ");
      out.print(rs.getString("l_date"));
      out.write("</div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <hr>\r\n");
      out.write("                  <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                      <h6 class=\"mb-0\">Selected Service</h6>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                       ");
      out.print(rs.getString("category_nm"));
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <hr>\r\n");
      out.write("                   <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                      <h6 class=\"mb-0\">Total Sum of Bill Amount</h6>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                       ");
      out.print(rs.getString("price"));
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <hr>\r\n");
      out.write("                  <div class=\"col-sm-9 text-secondary\">\r\n");
      out.write("                      \r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            \r\n");
      out.write("                            <div class=\"col-sm-4\"><a class=\"btn btn-primary \" target=\"__blank\" href=\"card_pay.jsp\">Pay Via Card</a></div>\r\n");
      out.write("                           <div class=\"col-sm-4\"><a class=\"btn btn-primary \" target=\"__blank\" href=\"online_pay.jsp\">Pay Via UPI</a></div>\r\n");
      out.write("                           <div class=\"col-sm-4\"><a class=\"btn btn-primary \" target=\"__blank\" href=\"cash_billdesk.jsp\">Pay Via Cash</a></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </form>\r\n");
      out.write("                  </div>\r\n");
      out.write("  ");

    }                 
            }catch(Exception ex)
{
  out.println(ex.toString());
}
            
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"row gutters-sm\">\r\n");
      out.write("                <div class=\"col-sm-3 mb-3\">\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

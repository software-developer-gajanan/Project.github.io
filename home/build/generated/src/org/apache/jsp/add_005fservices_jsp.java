package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_005fservices_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       \n");
      out.write("        <title>Add service</title>\n");
      out.write("           <link rel=\"stylesheet\" href=\"bootstrap.min.css\">\n");
      out.write("             <script src=\"validation.js\"></script>\n");
      out.write("          <style>\n");
      out.write("            .container{\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            .body{\n");
      out.write("               background-image:url(\"images/login.jpg\");\n");
      out.write("            }\n");
      out.write("            .form{\n");
      out.write("                border-radius: 20px;\n");
      out.write("                padding: 20px;\n");
      out.write("                background-color: white;\n");
      out.write("                margin-top: 50px;\n");
      out.write("                border: solid;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"body\">\n");
      out.write("       <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-2\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                    \n");
      out.write("<form class=\"form\" action=\"add_services\" method=\"post\"> \n");
      out.write("                         \n");
      out.write("                         <a href=\"vendor_home_page.jsp\" style=\"float:right;\" class=\"btn btn-outline-danger\">X</a>\n");
      out.write("            <h5 align=\"center\">Add Services</h5>\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("            <label>Vendor Name</label>\n");
      out.write("        \n");
      out.write("        <input type=\"text\" name=\"v_nm\" placeholder=\"Enter vendor name\" class=\"form-control\" onkeypress=\"Javascript:return isString(event)\" required>\n");
      out.write("           \n");
      out.write("            <br>\n");
      out.write("            <label>Contact</label>\n");
      out.write("        \n");
      out.write("        <input type=\"text\" name=\"c_no\" placeholder=\"Enter contact number\" class=\"form-control\" onkeypress=\"Javascript:return isNumber(event)\" maxlength=\"10\" minlength=\"10\" required >\n");
      out.write("               <br> <label> Address</label>\n");
      out.write("            <br>\n");
      out.write("            <textarea name=\"address\" placeholder=\"Enter address\"  rows=\"2\" class=\"form-control\"  required></textarea>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("    \n");
      out.write("         <label>Add price</label>\n");
      out.write("            <input type=\"text\" name=\"price\" placeholder=\"Enter price\" class=\"form-control\" onkeypress=\"Javascript:return isNumber(event)\" required=\"*\">\n");
      out.write("        <br>\n");
      out.write("      \n");
      out.write("        <input type=\"submit\" value=\"Cancle\" name=\"btn\" class=\"btn btn-danger\" style=\"float:right;\">\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("        <div class=\"col-sm-6\">\n");
      out.write("            <label>Email</label>\n");
      out.write("            <input type=\"email\" name=\"email\" placeholder=\"Enter email\" class=\"form-control\" required>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("              <label>Category name</label>\n");
      out.write("   \n");
      out.write("              <select class=\"form-control\" name=\"category_nm\" required>\n");
      out.write("            <option> Select</option>\n");
      out.write("                <option>Cooking</option>\n");
      out.write("                <option>Cleaning</option>\n");
      out.write("                <option>Plumbing</option>\n");
      out.write("                <option>Gardening</option>\n");
      out.write("                <option>Driving</option>\n");
      out.write("        </select>\n");
      out.write("            \n");
      out.write("              \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("        <label>Select Area</label>\n");
      out.write("        <select class=\"form-control\" name=\"c_select\">\n");
      out.write("            <option> Select</option>\n");
      out.write("               <option>Gadhinglaj</option>\n");
      out.write("                  <option>Nesari</option>\n");
      out.write("                  <option>Chandgad</option>\n");
      out.write("                  <option>Kolhapur</option>\n");
      out.write("                  <option>Ajara</option>\n");
      out.write("                  \n");
      out.write("        </select>\n");
      out.write("       \n");
      out.write("                </div>\n");
      out.write("            </div><br>\n");
      out.write("             <label>Office Address</label>\n");
      out.write("              <textarea type=\"\" name=\"office_add\" placeholder=\"Enter office address\" class=\"form-control\" ></textarea>\n");
      out.write("    <br>\n");
      out.write("      <label>Add profile image</label>\n");
      out.write("       <input type=\"file\" name=\"add_profile\"  placeholder=\"Add \" class=\"form-control\" required>\n");
      out.write("       <br>\n");
      out.write("       <input type=\"submit\" value=\"Add\" class=\"btn btn-info\" name=\"btn\" style=\"float:left;\">\n");
      out.write("        </div>      \n");
      out.write("    \n");
      out.write("     \n");
      out.write("   </form> \n");
      out.write("    </div>                \n");
      out.write("</div>          \n");
      out.write("        <div class=\"col-sm-2\">\n");
      out.write("            </div>  \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kalkundregaju
 */
public class vendor_register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    PrintWriter out=resp.getWriter();
    
    String f_nm=req.getParameter("f_nm");
    String l_nm=req.getParameter("l_nm");
    String address=req.getParameter("address");
    String email=req.getParameter("email");
    String pswd=req.getParameter("pswd");
    String c_pswd=req.getParameter("c_pswd");
           String id=req.getParameter("id");
    
    String event=req.getParameter("btn");
    
    out.println(f_nm);
    out.println(l_nm);
    out.println(address);
    out.println(email);
    out.println(pswd);
    out.println(c_pswd);
     out.println(event);
    
      Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("submit"))
       {
           
           String insert=db.Query("insert into vendor_register(f_nm,l_nm,address,email,pswd,cpswd)values('"+f_nm+"','"+l_nm+"','"+address+"','"+email+"','"+pswd+"','"+c_pswd+"')", "Record Inserted");
           out.println(insert);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Inserted Successfuly');");
      out.println("location='vendor_login.jsp';");
      out.println("</script>");
       
       }
       if(event.equals("Delete"))
       {
       String delete=db.Query("delete from vendor_register where id='"+id+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='vendor_register_list.jsp';");
      out.println("</script>");
       }
       
          if(event.equals("Update"))
       {
           
           String update=db.Query("update vendor_register set f_nm='"+f_nm+"',l_nm='"+l_nm+"',address='"+address+"',email='"+email+"' where id='"+id+"'", "Record updated");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Updated Successfuly');");
      out.println("location='vendor_register_list.jsp';");
      out.println("</script>");
       
       }
        }
 

  
}

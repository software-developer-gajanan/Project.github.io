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
public class contact_page extends HttpServlet {

  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String nm=req.getParameter("nm");
        String email=req.getParameter("email");

        String msg=req.getParameter("msg");
         String id=req.getParameter("id");
        String event=req.getParameter("btn");
        

        out.println(nm);
        out.println(email);
        out.println(msg);
        out.println(event);
          
    Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(event.equals("Submit"))
       {
           
           String insert=db.Query("insert into contact_page(nm,email,msg)values('"+nm+"','"+email+"','"+msg+"')", "Record Inserted");
           out.println(insert);
           
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Message send sucessfully');");
                    out.println("location='index_page.jsp';");
                    out.println("</script>");
       }
        if(event.equals("Delete"))
       {
       String delete=db.Query("delete from contact_page where id='"+id+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='contact_page_list.jsp';");
      out.println("</script>");
       }
        if(event.equals("Update"))
       {
           
           String update=db.Query("update contact_page set nm='"+nm+"',email='"+email+"',msg='"+msg+"' where id='"+id+"'", "Record updated");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Updated Successfuly');");
      out.println("location='contact_page_list.jsp';");
      out.println("</script>");
       
       }
       }


}

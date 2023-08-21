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
public class vendor_feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          PrintWriter out=resp.getWriter();
    
    String email=req.getParameter("email");
    String suggest=req.getParameter("suggest");
    String id=req.getParameter("id");
    String event=req.getParameter("btn");
 
    
     out.println(email);
     out.println(suggest); 
      out.println(event);
     
       Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("Submit"))
       {
           
           String insert=db.Query("insert into vendor_feedback(email,suggest)values('"+email+"','"+suggest+"')", "Record Inserted");
           out.println(insert);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Inserted Successfuly');");
      out.println("location='vendor_feedback.jsp';");
      out.println("</script>");
       
       }
       if(event.equals("Delete"))
       {
       String delete=db.Query("delete from vendor_feedback where id='"+id+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='vendor_feedback_list.jsp';");
      out.println("</script>");
       }
       
        if(event.equals("Update"))
       {
           
           String update=db.Query("update vendor_feedback set email='"+email+"',suggest='"+suggest+"' where id='"+id+"'", "Record updated");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Updated Successfuly');");
      out.println("location='vendor_feedback_list.jsp';");
      out.println("</script>");
       
       }
    }

  

        }
   

  



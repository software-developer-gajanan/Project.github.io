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
public class online_pay extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        
            
   PrintWriter out=resp.getWriter();
    
    String upi=req.getParameter("upi");
    String amt=req.getParameter("amt");
       String id=req.getParameter("id");
    String event=req.getParameter("btn");
 
    
     out.println(upi);
     out.println(amt); 
     out.println(event);
     
     Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("Pay"))
       {
           
           String insert=db.Query("insert into online_pay(upi,amt)values('"+upi+"','"+amt+"')", "Record Inserted");
           out.println(insert);
       
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Payment Successfuly');");
      out.println("location='upi_billdesk.jsp';");
      out.println("</script>");
       }
        if(event.equals("Delete"))
       {
       String delete=db.Query("delete from online_pay where id='"+id+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='online_pay_list.jsp';");
      out.println("</script>");
       }
        
        if(event.equals("Update"))
       {
           
           String update=db.Query("update online_pay set upi='"+upi+"',amt='"+amt+"' where id='"+id+"'", "Record updated");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Updated Successfuly');");
      out.println("location='online_pay_list.jsp';");
      out.println("</script>");
       
       }
    }

 
        }
    





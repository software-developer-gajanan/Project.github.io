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
public class card_pay extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
    
    String ch_name=req.getParameter("ch_name");
    String c_no=req.getParameter("c_no");
    String cvv=req.getParameter("cvv");
    String exp_date=req.getParameter("exp_date");
    String amt=req.getParameter("amt");
      String id=req.getParameter("id");
    String event=req.getParameter("btn");
    
     out.println(ch_name);
       out.println(c_no);
       out.println(cvv);
       out.println(exp_date);
       out.println(amt);
        out.println(event);
       
      Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("Pay"))
       {
           
           String insert=db.Query("insert into card_pay(ch_name,c_no,cvv,exp_date,amt)values('"+ch_name+"','"+c_no+"','"+cvv+"','"+exp_date+"','"+amt+"')", "Record Inserted");
           out.println(insert);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Payment Successfuly');");
      out.println("location='billdesk_page.jsp';");
      out.println("</script>");
       
       }
       
        if(event.equals("Delete"))
       {
       String delete=db.Query("delete from card_pay where id='"+id+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='admin_cardpay_list.jsp';");
      out.println("</script>");
       }
        
        if(event.equals("Update"))
       {
           
           String update=db.Query("update card_pay set ch_name='"+ch_name+"',c_no='"+c_no+"',cvv='"+cvv+"',exp_date='"+exp_date+"',amt='"+amt+"' where id='"+id+"'", "Record updated");
           out.println(update);
       
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Updated Successfuly');");
      out.println("location='card_pay_list.jsp';");
      out.println("</script>");
       }
    }

   
        }
    

    



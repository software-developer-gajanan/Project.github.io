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
import javax.servlet.http.HttpSession;

/**
 *
 * @author kalkundregaju
 */
public class booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
        PrintWriter out=resp.getWriter();
       String user_name=req.getParameter("user_name");
       String c_no=req.getParameter("c_no");
       String address=req.getParameter("address");
       String email=req.getParameter("email");
       String b_date=req.getParameter("b_date");
       String l_date=req.getParameter("l_date");
       String v_name=req.getParameter("v_name");
         String category_nm=req.getParameter("category_nm");
       String u_price=req.getParameter("u_price");
        String id=req.getParameter("id");
        String vemail=req.getParameter("vemail");
       String event=req.getParameter("btn");
       
       
       
       out.println(user_name);
       out.println(c_no);
       out.println(address);
       out.println(email);
       out.println(b_date);
        out.println(l_date);
       out.println(v_name);
       out.println(u_price);
        out.println(event);
        out.println(category_nm);
        out.println(id);
       
         Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("Book Now"))
       {
           
           String insert=db.Query("insert into booking(user_name,c_no,address,email,b_date,l_date,v_name,category_nm,u_price,vemail)values('"+user_name+"','"+c_no+"','"+address+"','"+email+"','"+b_date+"','"+l_date+"', '"+v_name+"','"+category_nm+"','"+u_price+"','"+vemail+"')", "Record Inserted");
           out.println(insert);
         
//            session.setAttribute("v_nm", v_name);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Data Inserted Successfuly');");
      out.println("location='bill_page.jsp';");
      out.println("</script>");
       
       }
        if(event.equals("Delete"))
       {
       String delete=db.Query("delete from booking where id='"+id+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='booking_list.jsp';");
      out.println("</script>");
       }
        if(event.equals("Update"))
       {
           
           String update=db.Query("update booking set user_name='"+user_name+"',c_no='"+c_no+"',address='"+address+"',email='"+email+"',b_date='"+b_date+"',v_name='"+v_name+"',u_price='"+u_price+"' where id='"+id+"'", "Record updated");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Updated Successfuly');");
      out.println("location='booking_list.jsp';");
      out.println("</script>");
       
       }
       
    }

    
        }
    





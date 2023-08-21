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
import static jdk.nashorn.internal.runtime.Debug.id;

/**
 *
 * @author kalkundregaju
 */
public class add_services extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
        String v_nm=req.getParameter("v_nm");
        String address=req.getParameter("address");
        String c_no=req.getParameter("c_no");
        String price=req.getParameter("price");
        String email=req.getParameter("email");
        String category_nm=req.getParameter("category_nm");
        String c_select=req.getParameter("c_select");
        String office_add=req.getParameter("office_add");
        String add_profile=req.getParameter("add_profile");
        
        String uid=req.getParameter("uid");
        
        String event=req.getParameter("btn");
        
          HttpSession session=req.getSession();
        
       out.println(v_nm);
       out.println(address);
       out.println(c_no);
       out.println(price);
       out.println(email);
       out.println(category_nm);
       out.println(c_select);
       out.println(office_add);
       out.println(add_profile);
         out.println(event);
   
       
         Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
            if(event.equals("Add"))
       {
           
           String insert=db.Query("insert into add_services(v_nm,address,c_no,price,email,category_nm,c_select,office_add,add_profile)values('"+v_nm+"','"+address+"','"+c_no+"','"+price+"','"+email+"', '"+category_nm+"','"+c_select+"','"+office_add+"','images/"+add_profile+"')", "Record Inserted");
           out.println(insert);
          session.setAttribute("vname", v_nm);
           session.setAttribute("email", email);
       
      resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Inserted Successfuly');");
      out.println("location='vendor_home_page.jsp';");
      out.println("</script>");
       }
            if(event.equals("Cancle"))
       {
            out.println("location='vendor_home_page.jsp';");
             
       }
            
             if(event.equals("Delete"))
       {
       String delete=db.Query("delete from add_services where uid='"+uid+"'","Record Deleted");
       out.println(delete);
       
       resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='add_service_list.jsp';");
      out.println("</script>");
       }
        
             if(event.equals("Update"))
        {
          
            String update=db.Query("update add_services set v_nm='"+v_nm+"',address='"+address+"',c_no='"+c_no+"',price='"+price+"',email='"+email+"',category_nm='"+category_nm+"',c_select='"+c_select+"',office_add='"+office_add+"',add_profile='"+add_profile+"' where uid='"+uid+"'", "Record updated");
          out.println(update);
       
          resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
       out.println("alert('Profile is Update Successfuly');");
     out.println("location='V_profile.jsp';");
       out.println("</script>");
       }
    }
}

    
   

 


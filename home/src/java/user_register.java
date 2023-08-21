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
public class user_register extends HttpServlet {

    static String jsp;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
    

    
        
        PrintWriter out=resp.getWriter();
        
        String first_nm=req.getParameter("first_nm");
        String lst_nm=req.getParameter("lst_nm");
        String address=req.getParameter("address");
        String email=req.getParameter("email");
        String pswd=req.getParameter("pswd");
        String cpswd=req.getParameter("cpswd");
        String id=req.getParameter("id");
        
        String event=req.getParameter("btn");
        
        out.println(first_nm);
        out.println(lst_nm);
        out.println(address);
        out.println(email);
        out.println(pswd);
         out.println(cpswd);
          out.println(event);
         
       Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("Submit"))
       {
           
           String insert=db.Query("insert into user_register(first_nm,lst_nm,address,email,pswd,cpswd)values('"+first_nm+"','"+lst_nm+"','"+address+"','"+email+"','"+pswd+"','"+cpswd+"')", "Record Inserted");
           out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Inserted Successfuly');");
      out.println("location='user_login.jsp';");
      out.println("</script>");
       
       }
          if(event.equals("Delete"))
       {
       String delete=db.Query("delete from user_register where id='"+id+"'","Record Deleted");
       out.println(delete);
       
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Deleted Successfuly');");
      out.println("location='user_register_list.jsp';");
      out.println("</script>");
       }
        
         if(event.equals("Update"))
       {
           
           String update=db.Query("update user_register set first_nm='"+first_nm+"',lst_nm='"+lst_nm+"',address='"+address+"',email='"+email+"' where id='"+id+"'", "Record updated");
           out.println(update);
           
            resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Update Successfuly');");
      out.println("location='user_register_list.jsp';");
      out.println("</script>");
       
       }
    }

   
        
    }

 



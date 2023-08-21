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
public class admin_register extends HttpServlet {

    static String jsp;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out=resp.getWriter();
        
        String email=req.getParameter("email");
        
        String pswd=req.getParameter("pswd");
        String cpswd=req.getParameter("cpswd");
        
        
        String event=req.getParameter("btn");
        
        out.println(email);
        out.println(pswd);
         out.println(cpswd);
          out.println(event);
         
       Database db=new Database();
       String result=db.connectdb();
       out.println(result);
       
       if(event.equals("Submit"))
       {
           
           String insert=db.Query("insert into admin_register(email,pswd,cpswd)values('"+email+"','"+pswd+"','"+cpswd+"')", "Record Inserted");
           out.println(insert);
           
            resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Record Inserted Successfuly');");
      out.println("location='admin_register.jsp';");
      out.println("</script>");
       
       
       }
    
    }

    }

    


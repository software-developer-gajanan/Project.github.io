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
public class add_vendor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out=resp.getWriter();
        String v_nm=req.getParameter("v_nm");
       
        String c_no=req.getParameter("c_no");
        String oc_no=req.getParameter("oc_no");
        String address=req.getParameter("address");
        String email=req.getParameter("email");
        String category=req.getParameter("category");
        
       
        String add_profile=req.getParameter("add_profile");
        
        String uid=req.getParameter("uid");
        
        String event=req.getParameter("btn");
        
       out.println(v_nm);
       out.println(address);
       out.println(c_no);
       out.println(oc_no);
       out.println(email);
       out.println(category);
      out.println(uid);
       out.println(add_profile);
         out.println(event);
       
   
    }

   
}

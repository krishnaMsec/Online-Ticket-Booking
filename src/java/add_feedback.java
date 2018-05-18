/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ghost
 */
public class add_feedback extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
        
        String un,em,fb;
        HttpSession session;
        session = request.getSession();
         
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection conn=DriverManager.getConnection("jdbc:ucanaccess://E:/booking.accdb");

            un=request.getParameter("firstname");
            em=request.getParameter("email");
            fb=request.getParameter("feedb");
            
            PreparedStatement p=conn.prepareStatement("INSERT into [feed] ([uname],[email],[feedback]) VALUES(?,?,?)");
            p.setString(1, un);
            p.setString(2, em);
            p.setString(3,fb);
            
            p.executeUpdate();
            

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Feedback Sent');");
            out.println("location='index.jsp';");
            out.println("</script>");  
            
            }
            catch(ClassNotFoundException | SQLException e)
            {
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ghost
 */
public class add_movie extends HttpServlet {

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
        
        String th,time,seat,amt,mn,cname=new String();
        
        HttpSession session;
        session = request.getSession();
        String uname=(String) session.getAttribute("name");
        
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection conn=DriverManager.getConnection("jdbc:ucanaccess://E:/booking.accdb");
            Statement s=conn.createStatement();
            
            th=request.getParameter("theatre");
            time=request.getParameter("timing");
            seat=request.getParameter("seat");
            amt=request.getParameter("amt");
            mn=request.getParameter("mov_name");
                    
            ResultSet rs=s.executeQuery("SELECT [first] from [reg] WHERE [u_name]='"+uname+"'");
            if(rs.next())
            {
                cname=rs.getString("first");
            }
            
            
            
            PreparedStatement p=conn.prepareStatement("INSERT into [adminview] ([u_name],[Custname],[movie],[theatre],[timing],[seats],[price]) VALUES(?,?,?,?,?,?,?)");
            p.setString(1, uname);
            p.setString(2, cname);
            p.setString(3,mn);
            p.setString(4,th);
            p.setString(5,time);
            p.setString(6,seat);
            p.setString(7,amt);
            
            p.executeUpdate();
            

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Confirm Payment');");
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

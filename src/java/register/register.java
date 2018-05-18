/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ghost
 */
public class register extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) 
        {
            String first=request.getParameter("fna");
            String middle=request.getParameter("mna");
            String last=request.getParameter("fla");
            String gender=request.getParameter("gen");
            String date=request.getParameter("date");
            String month=request.getParameter("month");
            String year=request.getParameter("year");
            String street=request.getParameter("stad");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String post=request.getParameter("post");
            String exten=request.getParameter("ext");
            String mobile=request.getParameter("mbno");
            String email=request.getParameter("ee");
            String user=request.getParameter("usn");
            String password=request.getParameter("pass");
            
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con=DriverManager.getConnection("jdbc:ucanaccess://E:/booking.accdb");
            Statement s=con.createStatement();
            
            ResultSet rs= s.executeQuery("SELECT * FROM [logkk] WHERE [u_name]='"+user+"';");
            if(rs.next())
            {
                out.println("<script type='text/javascript'>");
                out.println("alert('UserName Already exists');");
                out.println("location='valid.jsp';");
                out.println("</script>");
            }
            
            
           // PreparedStatement ps=con.prepareStatement("insert into [reg] ([first], [middle], [last], [gender], [r_day],[mon],[yearreg],[street],[city],[state],[postal],[ext],[mobile],[email],[u_user],[u_pass]) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            PreparedStatement ps=con.prepareStatement("INSERT INTO [reg] ([first],[middle],[last],[gender],[yearreg],[r_day],[mon],[street],[city],[state],[postal],[ext],[mobile],[email],[u_name],[u_pass]) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            
            PreparedStatement pslog=con.prepareStatement("INSERT INTO [logkk] ([u_name], [u_pass]) VALUES(?,?)" );

            ps.setString(1,first);
            ps.setString(2,middle);
            ps.setString(3,last);
            ps.setString(4,gender);
            ps.setString(5,year);
            ps.setString(6,date);
            ps.setString(7,month);
            ps.setString(8,street);
            
            ps.setString(9,city);
            ps.setString(10,state);
            ps.setString(11,post);
            ps.setString(12,exten);
            ps.setString(13,mobile);
            ps.setString(14,email);
            ps.setString(15,user);
            ps.setString(16,password);
            
           
            pslog.setString(1,user);
            pslog.setString(2,password);
          
            ps.executeUpdate();
            pslog.executeUpdate();
            
            
            
           out.println("<script type='text/javascript'>");
           out.println("alert('you are successfuly added into community');");
           out.println("location='index.jsp';");
           out.println("</script>");
        }
        catch(Exception e)
        {}
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

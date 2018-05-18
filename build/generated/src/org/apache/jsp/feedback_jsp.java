package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>KPMS WELCOME YOU</title>\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/style.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css\">\n");
      out.write("  \t<script src=\"http://code.jquery.com/jquery-1.10.2.js\"></script>\n");
      out.write("  \t<script src=\"http://code.jquery.com/ui/1.11.4/jquery-ui.js\"></script>\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath());
      out.write("/css/animate.css\" rel=\"stylesheet\"/>\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath());
      out.write("/css/waypoints.css\" rel=\"stylesheet\"/>\n");
      out.write("\t<script src=\"");
      out.print(request.getContextPath());
      out.write("/js/jquery.waypoints.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\t<script src=\"");
      out.print(request.getContextPath());
      out.write("/js/waypoints.js\" type=\"text/javascript\"></script>\n");
      out.write("\t<style>\n");
      out.write("\t#customers {\n");
      out.write("\t    font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\n");
      out.write("\t    border-collapse: collapse;\n");
      out.write("\t    width: 80%;\n");
      out.write("\t\t\tmargin: auto;margin-top: 40px;\n");
      out.write("\t}\n");
      out.write("\t#customers td, #customers th {\n");
      out.write("\t    border: 1px solid #ddd;\n");
      out.write("\t    padding: 8px;\n");
      out.write("\t}\n");
      out.write("\t#customers tr:nth-child(even){background-color: #f2f2f2;}\n");
      out.write("\n");
      out.write("\t#customers tr:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("\t#customers th {\n");
      out.write("\t    padding-top: 12px;\n");
      out.write("\t    padding-bottom: 12px;\n");
      out.write("\t    text-align: left;\n");
      out.write("\t    background-color: #4CAF50;\n");
      out.write("\t    color: white;\n");
      out.write("\t}\n");
      out.write("\t</style>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t$(window).scroll(function(){\n");
      out.write("\t\tif($(this).scrollTop()>250){\n");
      out.write("\t\t\t$('.menuk').addClass(\"sticky\");\n");
      out.write("\t\t}\n");
      out.write("\t\telse{\n");
      out.write("\t\t\t$('.menuk').removeClass(\"sticky\");\n");
      out.write("\t\t}\n");
      out.write("\t})\n");
      out.write("\t</script>\n");
      out.write("        <script>\n");
      out.write("    function logout()\n");
      out.write("    {\n");
      out.write("    location=\"logout\";\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body style=\"margin: 0; padding: 0; width:100%;\">\n");
      out.write("\t<section id=\"admin_container\">\n");
      out.write("\t\t<div class=\"dropdown\">\n");
      out.write("                    <button id=\"username\" class=\"dropbtn\" onclick=\"logout()\">Log Out</button>\n");
      out.write("\t   </div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t</script>\n");
      out.write("\t<div class=\"header_content_inner\">\n");
      out.write("\t\t<div class=\"header_content\" style=\"padding-bottom: 0%;\">\n");
      out.write("\t<section class=\"os-animation\" data-os-animation=\"zoomInDown\" data-os-animation-delay=\"0.3s\">\n");
      out.write("\t<h1 data-title=\"kpms cinemas\">kpms cinemas</h1>\n");
      out.write("\t\t<p>just made it ease</p>\n");
      out.write("\t</section>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("<nav class=\"navigation\">\n");
      out.write("\t<ul class=\"menuk\">\n");
      out.write("\t\t<li><a href=\"adminview.jsp\"><span title=\"STATUS   \"></span></a></li>\n");
      out.write("\t\t<li><a href=\"feedback.jsp\"><span title=\"FEEDBACKS  \"></span></a></li>\n");
      out.write("\t\t<li style=\"margin-left: 4%\"><a href=\"messageus.jsp\"><span title=\"MESSAGES \"></span></a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("</nav>\n");
      out.write("<section style=\"width:100%; height: 950px;\">\n");
      out.write("\t<table id=\"customers\">\n");
      out.write("\t\t<col width=\"80\">\n");
      out.write("\t\t<col width=\"150\">\n");
      out.write("\t\t<col width=\"300\">\n");
      out.write("\t<tr>\n");
      out.write("    <th>UserName</th>\n");
      out.write("    <th>E-Mail</th>\n");
      out.write("    <th>Feedback</th>\n");
      out.write("\t\t  </tr>\n");
      out.write("\t\n");
      out.write("                  ");

            try
            {Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection conn=DriverManager.getConnection("jdbc:ucanaccess://E:/booking.accdb");
            Statement s=conn.createStatement();
            
            ResultSet rs= s.executeQuery("SELECT * FROM [feed] ");
            
            
            while(rs.next())
            {
                
                String uname=rs.getString("uname");
                String email=rs.getString("email");
                String fb=rs.getString("feedback");
                
                        
                out.println("<tr>");
                out.println("<td>"+uname+"</td>");
                out.println("<td>"+email+"</td>");
                out.println("<td>"+fb+"</td>");
                out.println("</tr>");
                
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
            }catch(Exception e)
            {}
  
      out.write("\n");
      out.write("                  \n");
      out.write("</table>\n");
      out.write("</section>\n");
      out.write("<section class=\"iconhover\"  style=\"position: relative; bottom: 0;\">\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li><a href=\"https://www.facebook.com/\" target=\"_blank\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://twitter.com/\" target=\"_blank\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://plus.google.com/\" target=\"_blank\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://www.instagram.com/?hl=en\" target=\"_blank\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://in.linkedin.com/\" target=\"_blank\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t</ul>\n");
      out.write("</section>\n");
      out.write("<footer>\n");
      out.write("\t<p>Â© 2017 KPMS CINEMAS online ticket booking site.</p>\n");
      out.write("\t<footer>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

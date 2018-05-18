package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cinema_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <title>CINEMAS</title>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/style.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("  <style>\n");
      out.write("  .mySlides {display:none}\n");
      out.write("  .container {\n");
      out.write("    position: relative;\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".image {\n");
      out.write("  opacity: 1;\n");
      out.write("  display: block;\n");
      out.write("  width: 100%;\n");
      out.write("  height: auto;\n");
      out.write("  transition: .5s ease;\n");
      out.write("  backface-visibility: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".middle {\n");
      out.write("  transition: .5s ease;\n");
      out.write("  opacity: 0;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container:hover .image {\n");
      out.write("  opacity: 0.67;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container:hover .middle {\n");
      out.write("  opacity: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".text a {\n");
      out.write("  background-color: #eda61a;\n");
      out.write("  color: white;\n");
      out.write("  font-size: 16px;\n");
      out.write("  padding: 16px 32px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body style=\"background: url(");
      out.print(request.getContextPath());
      out.write("/img/typography-countries-russia.jpg)\">\n");
      out.write("  <nav class=\"navigation\">\n");
      out.write("  \t<ul class=\"menuk\">\n");
      out.write("  \t\t<li><a href=\"index.jsp \"><span title=\"HOME   \"></span></a></li>\n");
      out.write("  \t\t<li><a href=\"index.jsp #myabout\"><span title=\"ABOUT  \"></span></a></li>\n");
      out.write("  \t\t<li><a href=\"cinema.jsp\"><span title=\"MOVIES \"></span></a></li>\n");
      out.write("  \t\t<li><a href=\"cinema.jsp\"><span title=\"THEATRE\"></span></a></li>\n");
      out.write("  \t\t<li><a href=\"index.jsp #mycontact\"><span title=\"CONTACT\"></span></a></li>\n");
      out.write("  \t</ul>\n");
      out.write("  </nav>\n");
      out.write("  <section class=\"w3-content\" style=\"max-width:100%; margin-top: 100px;\" >\n");
      out.write("  <div class=\"w3-content\" style=\"max-width:800px\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("  <img class=\"mySlides image\" src=\"");
      out.print(request.getContextPath());
      out.write("/img/spider-man-homecoming-wallpapers-high-resolution.jpg\" style=\"width:100%\">\n");
      out.write("  <div class=\"middle\">\n");
      out.write("    <div class=\"text\"><button onclick=\"document.getElementById('movieid').value='Spider Man';location='book.jsp'\">Book Now</button></div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"container\">\n");
      out.write("<img class=\"mySlides image\" src=\"");
      out.print(request.getContextPath());
      out.write("/img/justice-league-wallpaper-23.jpg\" style=\"width:100%\">\n");
      out.write("<div class=\"middle\">\n");
      out.write("    \n");
      out.write("    <div class=\"text\"><button onclick=\"document.getElementById('movieid').value='Justice League';location='book.jsp'\">Book Now</button></div>\n");
      out.write("</div>\n");
      out.write("</div><div class=\"container\">\n");
      out.write("  <img class=\"mySlides image\" src=\"");
      out.print(request.getContextPath());
      out.write("/img/5363008-justice-league-wallpaper-hd.jpg\" style=\"width:100%\">\n");
      out.write("<div class=\"middle\">\n");
      out.write("    \n");
      out.write("    <div class=\"text\"><button onclick=\"document.getElementById('movieid').value='Marvel Avenger';location='book.jsp'\">Book Now</button> </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"w3-center\">\n");
      out.write("  <div class=\"w3-section\">\n");
      out.write("    <button class=\"w3-button w3-light-grey\" onclick=\"plusDivs(-1)\">â® Prev</button>\n");
      out.write("    <button class=\"w3-button w3-light-grey\" onclick=\"plusDivs(1)\">Next â¯</button>\n");
      out.write("  </div>\n");
      out.write("  <button class=\"w3-button demo\" onclick=\"currentDiv(1)\">1</button>\n");
      out.write("  <button class=\"w3-button demo\" onclick=\"currentDiv(2)\">2</button>\n");
      out.write("  <button class=\"w3-button demo\" onclick=\"currentDiv(3)\">3</button>\n");
      out.write("</div>\n");
      out.write("<input type=\"hidden\" id=\"movieid\" name=\"mov_n\" value=\"\" />\n");
      out.write("</section>\n");
      out.write("<section class=\"iconhover\"  style=\"position: absolute; bottom: 0;\">\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li><a href=\"https://www.facebook.com/\" target=\"_blank\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://twitter.com/\" target=\"_blank\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://plus.google.com/\" target=\"_blank\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://www.instagram.com/?hl=en\" target=\"_blank\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t<li><a href=\"https://in.linkedin.com/\" target=\"_blank\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t</ul>\n");
      out.write("</section>\n");
      out.write("<footer style=\"position: absolute; bottom: 0;\">\n");
      out.write("  <p>Â© 2017 KPMS CINEMAS online ticket booking site.</p>\n");
      out.write("  <footer>\n");
      out.write("<script>\n");
      out.write("var slideIndex = 1;\n");
      out.write("showDivs(slideIndex);\n");
      out.write("\n");
      out.write("function plusDivs(n) {\n");
      out.write("  showDivs(slideIndex += n);\n");
      out.write("}\n");
      out.write("\n");
      out.write("function currentDiv(n) {\n");
      out.write("  showDivs(slideIndex = n);\n");
      out.write("}\n");
      out.write("\n");
      out.write("function showDivs(n) {\n");
      out.write("  var i;\n");
      out.write("  var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("  var dots = document.getElementsByClassName(\"demo\");\n");
      out.write("  if (n > x.length) {slideIndex = 1;}\n");
      out.write("  if (n < 1) {slideIndex = x.length;}\n");
      out.write("  for (i = 0; i < x.length; i++) {\n");
      out.write("     x[i].style.display = \"none\";\n");
      out.write("  }\n");
      out.write("  for (i = 0; i < dots.length; i++) {\n");
      out.write("     dots[i].className = dots[i].className.replace(\" w3-red\", \"\");\n");
      out.write("  }\n");
      out.write("  x[slideIndex-1].style.display = \"block\";\n");
      out.write("  dots[slideIndex-1].className += \" w3-red\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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

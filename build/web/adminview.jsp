<%-- 
    Document   : adminview
    Created on : Sep 17, 2017, 10:21:12 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>KPMS WELCOME YOU</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/css/waypoints.css" rel="stylesheet"/>
	<script src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/waypoints.js" type="text/javascript"></script>
	<style>

	</style>
	<script type="text/javascript">
	$(window).scroll(function(){
		if($(this).scrollTop()>250){
			$('.menuk').addClass("sticky");
		}
		else{
			$('.menuk').removeClass("sticky");
		}
	})
	</script>
        <script>
    function logout()
    {
    location="logout";
    }
</script>

</head>
<body style="margin: 0; padding: 0; width:100%;">
	<section id="admin_container">
		<div class="dropdown">
                    <button id="username" class="dropbtn" onclick="logout()">Log Out</button>
	   </div>
	</div>

	</script>
	<div class="header_content_inner">
		<div class="header_content" style="padding-bottom: 0%;">
	<section class="os-animation" data-os-animation="zoomInDown" data-os-animation-delay="0.3s">
	<h1 data-title="kpms cinemas">kpms cinemas</h1>
		<p>just made it ease</p>
	</section>
</div>
</div>
</section>
<nav class="navigation">
	<ul class="menuk">
		<li><a href="adminview.jsp"><span title="STATUS   "></span></a></li>
		<li><a href="feedback.jsp"><span title="FEEDBACKS  "></span></a></li>
		<li style="margin-left: 4%"><a href="messageus.jsp"><span title="MESSAGES "></span></a></li>
			</ul>
</nav>

<section style="width:100%; height: 950px;">
	<table id="customers">
		<col width="180">
    <col width="250">
		<col width="300">
		<col width="150">
		<col width="120">
		<col width="150">
  <tr>
    <th>UserName</th>
    <th>CustomerName</th>
    <th>Movie</th>
		<th>Timings</th>
		<th>Seats</th>
		<th>Amount</th>
		<th>Remove</th>
  </tr>
  <!--<button class="remove">Remove</button>-->
	
  <%
            try
            {Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection conn=DriverManager.getConnection("jdbc:ucanaccess://E:/booking.accdb");
            Statement s=conn.createStatement();
            
            ResultSet rs= s.executeQuery("SELECT * FROM [adminview] ");
            
            
            while(rs.next())
            {
                
                String uname=rs.getString("u_name");
                String cname=rs.getString("Custname");
                String mov=rs.getString("movie");
                String thea=rs.getString("theatre");
                String time=rs.getString("timing");
                String seat=rs.getString("seats");
                String amt=rs.getString("price");
                        
                out.println("<tr>");
                out.println("<td>"+uname+"</td>");
                out.println("<td>"+cname+"</td>");
                out.println("<td>"+mov+"</td>");
                out.println("<td>"+thea+"</td>");
                out.println("<td>"+time+"</td>");
                out.println("<td>"+seat+"</td>");
                out.println("<td>"+amt+"</td>");
                out.println("</tr>");
                
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
            }catch(Exception e)
            {}
  %>
</table>
</section>
<section class="iconhover"  style="position: relative; bottom: 0;">
	<ul>
		<li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		<li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
		<li><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
		<li><a href="https://www.instagram.com/?hl=en" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		<li><a href="https://in.linkedin.com/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
	</ul>
</section>
<footer>
	<p>Â© 2017 KPMS CINEMAS online ticket booking site.</p>
	<footer>
</body>
</html>

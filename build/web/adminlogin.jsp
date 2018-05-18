<%-- 
    Document   : adminlogin
    Created on : Sep 17, 2017, 10:21:59 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title> ADMIN LOGIN</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/log.css">
  </head>
  <body>
    <div class="container">
      <section>
        <img src="<%=request.getContextPath()%>/img/man.png">
        <h3>WELCOME ADMIN</h3>
        <form action="logadmin" method="POST">
          <div class="inpic">
            <input type="text" name="username" placeholder="Enter user name...">
          </div>
          <div class="inpic">
            <input type="password" name="password" placeholder="Enter password...">
          </div>
          <div>
            <button type="submit" class="btn" value="LOG IN">LOG IN</button>
          </div>
        </form>
      </section>
    </div>

  </body>
</html>

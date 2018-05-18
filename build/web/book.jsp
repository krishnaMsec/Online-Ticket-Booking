<%-- 
    Document   : book
    Created on : Sep 17, 2017, 10:20:23 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>BookTickets</title>
  <style>
  table {
      border-collapse: collapse;
      width: 80%;
      margin: auto;
  }
td {
      text-align: center;
      padding: 0px;
  }
.payment{
  width: 35%;
  margin: auto;
  margin-top: 150px;
  margin-bottom: 50px;
}
.deat{
  margin-top: 50px;
}

  .seatHover{
 padding: 5px;
 background-color: #f7a50e;
 border: 2px solid #f7a50e;
 color: #000;
 padding: 15px 32px;
 text-align: center;
 text-decoration: none;
 display: inline-block;
 font-size: 16px;
 margin: 4px 2px;
 cursor: pointer;
 transition: color background-color 2s;
  }


  .seatHead{
 padding: 0px;
 border-left: 9px solid #d6d6d6;
 color: Black;
 padding-left: 5px;
 text-align: left;
 width: 100px;
 font-size: 16px;
 margin: 4px 2px;

  }
  input[type=text], select {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
  }

  input[type=submit] {
      width: 100%;
      background-color: #f7a50e;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
  }

  input[type=submit]:hover {
      background-color: #45a049;
  }

  div {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
  }
  #clicker{
    height: 37px;
    width: 230px;
    border: 1px solid #6a6464;
    border-radius: 40px;
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    bottom: 10px;
    box-shadow: 0px 2px 1px gray;
}
#leftarrow{
    height: 25px;
    width: 25px;
    border-radius: 50%;
    border: 1px solid #6a6464;
    font-size: 12px;
    position: absolute;
    top:0;
    left: 0;
    margin: 5px 5px;
    text-align: center;
    line-height: 25px;
    color:#6a6464;
    box-shadow: 0px 2px 1px gray;
}
#leftarrow:hover{
    cursor: pointer;
}
#leftarrow::selection{
    background-color: transparent;
}
#rightarrow{
    height: 25px;
    width: 25px;
    border-radius: 50%;
    border: 1px solid #6a6464;
    font-size: 12px;
    position: absolute;
    top:0;
    right: 0;
    margin: 5px 5px;
    text-align: center;
    line-height: 25px;
    color:#6a6464;
    box-shadow: 0px 2px 1px gray;
}
#rightarrow:hover{
    cursor: pointer;
}
#rightarrow::selection{
    background-color: transparent;
}
#counter{
    position: absolute;
    top:50%;
    left: 50%;
    transform: translate(-50%,-50%);
    font-family: arial;
    color:#6a6464;
    font-size: 15px;
}
#counter::selection{
    background-color: transparent;
}

  </style>
 <script>
      window.onload = function(){
  var all = document.getElementsByTagName("td");
        for (var i=0;i<all.length;i++) {
            all[i].onclick = inputClickHandler;
        }
    };

    function inputClickHandler(e){
        e = e||window.event;
        var tdElm = e.target||e.srcElement;
        if(tdElm.style.backgroundColor === 'rgb(255, 0, 0)'){
            tdElm.style.backgroundColor = '#fff';
        } else {
            tdElm.style.backgroundColor = '#4CAF50';
        }
    }
     </script>
  </head>
  <body style= "background: url(<%=request.getContextPath()%>/img/pistol-gun-pulp-fiction-typography-design-hd-wallpapers-desktop-backgrounds-17a.jpg);">
    <nav class="navigation">
    	<ul class="menuk">
    		<li><a href="index.jsp "><span title="HOME   "></span></a></li>
    		<li><a href="index.jso #myabout"><span title="ABOUT  "></span></a></li>
    		<li><a href="cinema.jsp"><span title="MOVIES "></span></a></li>
    		<li><a href="cinema.jsp"><span title="THEATRE"></span></a></li>
    		<li><a href="index.jsp #mycontact"><span title="CONTACT"></span></a></li>
    	</ul>
    </nav>
    <section style="position: relative; width: 100%; height: 100px;">
    <h3 style="color: #ff5000;border: 3px solid #fff; font-size: 2em; margin-top: 10px; margin-left: 320px;margin-right: 1160px;background:#000;padding:5px;">No.of seats:</h3>
            <div id="clicker">
                <div id="leftarrow">&#9668;</div>
                <div id="counter">0</div>
                <div id="rightarrow">&#9658;</div>
            </div>
        </div>
        </section>
<div class="deat">
  <h2>Screen 1</h2>

  <table>
    <tr>
        <td class="seatHead">A</td>
      <td class="seatHover"  onclick="seatchange()">1</td>
      <td class="seatHover">2</td>
      <td class="seatHover">3</td>
      <td class="seatHover">4</td>
      <td class="seatHover">5</td>
      <td class="seatHover">6</td>
      <td class="seatHover">7</td>
      <td class="seatHover">8</td>
      <td class="seatHover">9</td>
      <td class="seatHover">10</td>
      <td class="seatHover">11</td>
      <td class="seatHover">12</td>
      <td class="seatHover">13</td>
      <td class="seatHover">14</td>
    </tr>
  </table>
</div>
  <div class="payment">
      <form action="add_movie" method="POST">
      <h3 style="color:#f7a50e; font-weight: bolder ;font-size:25px; text-align: center; text-transform: uppercase;">payment process</h3>
            <label for="theatre">Theatre</label>
    <select id="theatre" name="theatre">
      <option value="kasi">Kasi</option>
      <option value="imax">I-Max</option>
      <option value="mayajal">Mayajal</option>
    </select>
    <label for="timeing">Timinig</label>
    <select id="timing" name="timing">
      <option value="ten">10:00 AM</option>
      <option value="two">02:00 PM</option>
      <option value="six">06:00 PM</option>
      <option value="twel">12:00 AM</option>
    </select>
      <label for="fname">Seats</label>
      <input type="text" id="fname" name="seat" value="0" >

      <label for="lname">Amount</label>
      <input type="text" id="lname" name="amt" value="0">
      <label for="mov_name">Movies</label>
      <input type="text" name="mov_name" value="<%=request.getParameter("mov_n")%>"> 
      
      <input type="submit" value="Pay">
    </form>
  </div>
  <section class="iconhover"  style="position: relative; bottom: 0;">
  	<ul>
  		<li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
  		<li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
  		<li><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
  		<li><a href="https://www.instagram.com/?hl=en" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
  		<li><a href="https://in.linkedin.com/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
  	</ul>
  </section>
  <footer style="position: relative; bottom: 0;">
  	<p>Â© 2017 KPMS CINEMAS online ticket booking site.</p>
  	<footer>
<script>
				 $(document).ready(function(){
						$count=0;
            $am=0;
						 $("#leftarrow").click(function(){
								if($count>0)
										{
												$count--;
                        $am=60*$count;
												$("#counter").text($count);
                        document.getElementById("fname").value=$count;
                        document.getElementById("lname").value=$am;
										}
						 });
						 $("#leftarrow").mousedown(function(){
								$("#leftarrow").css("BoxShadow","0px 0px 0px gray");
						 });
						 $("#leftarrow").mouseup(function(){
								 $("#leftarrow").css("BoxShadow","0px 2px 1px gray");
						 });
						 $("#rightarrow").click(function(){
               $am=0;
								if($count<10)
										{
												$count++;
                        $am=60*$count;
												$("#counter").text($count);
                        document.getElementById("fname").value=$count;
                        document.getElementById("lname").value=$am;
										}
						 });
						 $("#rightarrow").mousedown(function(){
								$("#rightarrow").css("BoxShadow","0px 0px 0px gray");
						 });
						 $("#rightarrow").mouseup(function(){
								 $("#rightarrow").css("BoxShadow","0px 2px 1px gray");
						 });
				 });
		 </script>
  </body>
</html>
